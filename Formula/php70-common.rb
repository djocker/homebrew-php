require "formula"
require File.expand_path("../../Abstract/abstract-php-version", __FILE__)

class Php71Common < Formula
  desc "PHP Version 7.1 (Common Package)"
  include AbstractPhpVersion::Php71Defs
  version PHP_VERSION
  revision 4

  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "php70"
  depends_on "php70-apcu"
  depends_on "php70-gmp"
  depends_on "php70-igbinary"
  depends_on "php70-imagick"
  depends_on "php70-intl"
  depends_on "php70-mcrypt"
  depends_on "php70-mongodb"
  depends_on "php70-opcache"
  depends_on "php70-pdo-pgsql"
  depends_on "php70-redis"
  depends_on "php70-tidy"
  depends_on "php70-xdebug"
  depends_on "php70-xhprof"

  keg_only "this package contains dependency only"

  def install
    system "echo $(date) > installed.txt"
    prefix.install "installed.txt"
  end
end