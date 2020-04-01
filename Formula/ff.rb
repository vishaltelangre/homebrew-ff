# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ff < Formula
  desc "Find files (ff) by name, fast!"
  homepage "https://github.com/vishaltelangre/ff"
  url "https://github.com/vishaltelangre/ff/archive/v0.1.8.tar.gz"
  sha256 "ee1ba83535302bab1858c331762b7f267371c816457ea814d20b96e1c83a79b9"
  head "https://github.com/vishaltelangre/ff.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
