require "formula"
require File.expand_path("../../Abstract/abstract-php-version", __FILE__)

class Php73Common < Formula
  desc "PHP Version 7.3 (Common Package)"
  include AbstractPhpVersion::Php73Defs
  version PHP_VERSION
  revision 4

  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "php73"
  depends_on "php73-apcu"
  depends_on "php73-gmp"
  depends_on "php73-igbinary"
  depends_on "php73-imagick"
  depends_on "php73-intl"
  depends_on "php73-mcrypt"
  depends_on "php73-mongodb"
  depends_on "php73-opcache"
  depends_on "php73-pdo-pgsql"
  depends_on "php73-sodium"
  depends_on "php73-redis"
  depends_on "php73-tidy"

  keg_only "this package contains dependency only"

#   if OS.mac?
#     system "#{HOMEBREW_PREFIX}/bin/brew list --formula | grep 'php[5-8][0-9]' | xargs -I{} printf '{} ' | xargs #{HOMEBREW_PREFIX}/bin/brew unlink"
#   elsif OS.linux?
#     system "#{HOMEBREW_PREFIX}/bin/brew list --formula | grep 'php[5-8][0-9]' | xargs -I{} printf '{} ' | xargs --no-run-if-empty #{HOMEBREW_PREFIX}/bin/brew unlink"
#   end

  def install
    system "echo $(date) > installed.txt"
    prefix.install "installed.txt"
  end
end
