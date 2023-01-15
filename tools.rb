class Tools < Formula
    desc "a cli tool to get information."
    homepage "https://github.com/stuchilde/tellme"
    url "https://github.com/stuchilde/tellme/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "42e0735ca008dbd82ebef1b79bc0202232b3fcb895951c834a4fd7a879f4be1f"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"tellme"
      system "cp", "bin/IP2LOCATION-LITE-DB3.BIN", bin/"IP2LOCATION-LITE-DB3.BIN"
    end
  
    test do
      system "false"
    end
  end