require File.join(File.dirname(__FILE__), 'homebrew-php-requirement')

class PharRequirement < HomebrewPhpRequirement
  def satisfied?
    @result = `PATH="$HOMEBREW_PATH" /usr/bin/env php -m`
    @result.downcase.include? "phar"
  end

  def message
    "PHP Phar support is required for this formula"
  end
end
