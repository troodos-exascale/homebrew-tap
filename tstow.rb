class Tstow < Formula
  desc "Explicit, idempotent deployment functor for dotfiles"
  homepage "https://github.com/troodos-exascale/tstow"
  url "https://github.com/troodos-exascale/tstow.git",
      tag:      "v1.2.0",
      revision: "HEAD"
  license "Apache-2.0"
  head "https://github.com/troodos-exascale/tstow.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tstow", "main.go"
    generate_completions_from_executable(bin/"tstow", "completion")
  end

  test do
    system "#{bin}/tstow", "--help"
  end
end
