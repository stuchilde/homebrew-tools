class Tools < Formula
    desc "a cli tool to get information."
    homepage "https://github.com/stuchilde/tellme"
    url "https://github.com/stuchilde/tellme/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "1dd457995bcac4bfee4c338c26a5a22b0307139b4857a6a157ddd7a7aa10d5e5"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"tellme"
    end
  
    test do
      system "false"
    end
  end