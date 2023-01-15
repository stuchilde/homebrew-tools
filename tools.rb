class Tools < Formula
    desc "a cli tool to get information."
    homepage "https://github.com/stuchilde/tellme"
    url "https://github.com/stuchilde/tellme/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "605ffb285db9f5c83b086e2b075ad4a530a1087f628dbf3a2cec4a1d3f822fb0"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"tellme"
      system "cp", "IP2LOCATION-LITE-DB3.BIN", bin/"IP2LOCATION-LITE-DB3.BIN"
    end
  
    test do
      system "false"
    end
  end