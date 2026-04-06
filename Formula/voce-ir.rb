class VoceIr < Formula
  desc "AI-native intermediate representation for user interfaces"
  homepage "https://voce-ir.xyz"
  url "https://github.com/marc-pelland/voce-ir/archive/refs/tags/v1.1.0.tar.gz"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "packages/validator"
  end

  test do
    system "#{bin}/voce", "--version"
  end
end
