#!/bin/bash
set -e
set -x
repository=${1-djocker}
images=$(ls -d */ | cut -f1 -d'/')
for image in $images; do
  tags=$(ls -d $image/*/ | cut -f2 -d'/' )
  for tag in $tags; do
    docker build --rm --squash -t "$repository/$image:$tag" $image/$tag
    version=$(docker run --rm "$repository/$image:$tag" php -v | egrep -o 'PHP [0-9][0-9]*\.[0-9][0-9]*\.[0-9][A-z0-9]*' | egrep -o '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][A-z0-9]*' )
    major=$(echo $version | awk -F. '{print $1}')
    minor=$(echo $version | awk -F. '{print $2}')
    fix=$(echo $version | awk -F. '{print $3}')
    docker tag "$repository/$image:$tag" "$repository/$image:$major"
    docker tag "$repository/$image:$tag" "$repository/$image:$major.$minor"
    docker tag "$repository/$image:$tag" "$repository/$image:$major.$minor.$fix"

    docker push "$repository/$image:$major"
    docker push "$repository/$image:$major.$minor"
    docker push "$repository/$image:$major.$minor.$fix"
  done
done
