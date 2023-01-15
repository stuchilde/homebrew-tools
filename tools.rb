class Tools < Formula
    desc "a cli tool to get information."
    homepage "https://github.com/stuchilde/tellme"
    url "https://github.com/stuchilde/tellme/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "4aafd7ba2879a5429c79cfb87218fa6763a882f5b94148b988a59a6ba2011605"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"tellme"
      system "cp", "files/IP2LOCATION-LITE-DB3.BIN", bin/"IP2LOCATION-LITE-DB3.BIN"
    end
  
    test do
      system "false"
    end
  end