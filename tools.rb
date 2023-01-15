class Tools < Formula
    desc "a cli tool to get information."
    homepage "https://github.com/stuchilde/tellme"
    url "https://github.com/stuchilde/tellme/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "b1da73e6a87d646fc7bade524ef4ce80b6ed00f4619c594f0fd1202ce472f10a"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"tellme"
      system "cp", "IP2LOCATION-LITE-DB3.BIN", bin/"IP2LOCATION-LITE-DB3.BIN"
    end
  
    test do
      system "false"
    end
  end