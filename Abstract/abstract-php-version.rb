class AbstractPhpVersion < Formula
  module PhpdbgDefs
    PHPDBG_SRC_TARBALL = "https://github.com/krakjoe/phpdbg/archive/v0.3.2.tar.gz".freeze
    PHPDBG_CHECKSUM    = {
      :sha256 => "feab6e29ef9a490aa53332fe014e8026d89d970acc5105f37330b2f31e711bbd",
    }.freeze
  end

  module Php56Defs
    PHP_SRC_TARBALL = "https://php.net/get/php-5.6.40.tar.bz2/from/this/mirror".freeze
    PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
    PHP_VERSION     = "5.6.40".freeze
    PHP_BRANCH      = "PHP-5.6".freeze

    PHP_CHECKSUM    = {
      :sha256 => "ffd025d34623553ab2f7fd8fb21d0c9e6f9fa30dc565ca03a1d7b763023fba00",
    }.freeze
  end

  module Php70Defs
    PHP_SRC_TARBALL = "https://php.net/get/php-7.0.33.tar.bz2/from/this/mirror".freeze
    PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
    PHP_VERSION     = "7.0.33".freeze
    PHP_BRANCH      = "PHP-7.0".freeze

    PHP_CHECKSUM    = {
      :sha256 => "4933ea74298a1ba046b0246fe3771415c84dfb878396201b56cb5333abe86f07",
    }.freeze
  end

  module Php71Defs
    PHP_SRC_TARBALL = "https://php.net/get/php-7.1.33.tar.bz2/from/this/mirror".freeze
    PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
    PHP_VERSION     = "7.1.33".freeze
    PHP_BRANCH      = "PHP-7.1".freeze

    PHP_CHECKSUM    = {
      :sha256 => "95a5e5f2e2b79b376b737a82d9682c91891e60289fa24183463a2aca158f4f4b",
    }.freeze
  end

  module Php72Defs
    PHP_SRC_TARBALL = "https://php.net/get/php-7.2.34.tar.bz2/from/this/mirror".freeze
    PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
    PHP_VERSION     = "7.2.34".freeze
    PHP_BRANCH      = "PHP-7.2".freeze

    PHP_CHECKSUM    = {
      :sha256 => "0e5816d668a2bb14aca68cef8c430430bd86c3c5233f6c427d1a54aac127abcf",
    }.freeze
  end

  module Php73Defs
      PHP_SRC_TARBALL = "https://php.net/get/php-7.3.26.tar.bz2/from/this/mirror".freeze
      PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
      PHP_VERSION     = "7.3.26".freeze
      PHP_BRANCH      = "PHP-7.3".freeze

      PHP_CHECKSUM    = {
        :sha256 => "371e5a7c8154fd3c52b14baace5f7d04c4bbb8e841d356c54a2b6a688db39d4e",
      }.freeze
    end

    module Php74Defs
      PHP_SRC_TARBALL = "https://php.net/get/php-7.4.14.tar.bz2/from/this/mirror".freeze
      PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
      PHP_VERSION     = "7.4.14".freeze
      PHP_BRANCH      = "PHP-7.4".freeze

      PHP_CHECKSUM    = {
        :sha256 => "6889ca0605adee3aa7077508cd79fcef1dbd88461cdf25e7c1a86997b8d0a1f6",
      }.freeze
    end

    module Php80Defs
      PHP_SRC_TARBALL = "https://php.net/get/php-8.0.1.tar.bz2/from/this/mirror".freeze
      PHP_GITHUB_URL  = "https://github.com/php/php-src.git".freeze
      PHP_VERSION     = "8.0.1".freeze
      PHP_BRANCH      = "PHP-8.0".freeze

      PHP_CHECKSUM    = {
        :sha256 => "c44e76af40d133de64564f9caf5daec52bbe84c1ccb4e4500a62233d614ebdee",
      }.freeze
    end
end
