require File.expand_path("../../Abstract/abstract-php-extension", __FILE__)

class Php74Zip < AbstractPhp74Extension
  init
  desc "Zip"
  homepage "https://www.php.net/manual/ru/book.zip.php"
  revision 1


  url PHP_SRC_TARBALL
  sha256 PHP_CHECKSUM[:sha256]

  depends_on "libzip"
  depends_on "pkg-config" => :build

  def install
        # Required due to icu4c dependency
    ENV.cxx11

    # icu4c 61.1 compatability
    #ENV.append "CPPFLAGS", "-DU_USING_ICU_NAMESPACE=1"
    
    Dir.chdir "ext/zip"

    safe_phpize
    system "./configure", "--prefix=#{prefix}",
                          phpconfig,
                          "--disable-dependency-tracking",
                          "--enable-zip",
                          "--with-libzip=#{Formula["libzip"].opt_prefix}"
    system "make"
    prefix.install "modules/zip.so"
    write_config_file if build.with? "config-file"
  end

#   def config_file
#     super + <<~EOS
#
#       ;intl.default_locale =
#       ; This directive allows you to produce PHP errors when some error
#       ; happens within intl functions. The value is the level of the error produced.
#       ; Default is 0, which does not produce any errors.
#       ;intl.error_level = E_WARNING
#     EOS
#   end
end
