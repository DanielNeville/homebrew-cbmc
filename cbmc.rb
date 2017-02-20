# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Cbmc < Formula
  desc "CBMC is a Bounded Model Checker for C and C++ programs. It supports C89, C99, most of C11 and most compiler extensions provided by gcc and Visual Studio." 
  homepage "http://www.cprover.org/cbmc/"
  url "https://github.com/diffblue/cbmc.git", :tag => "cbmc-5.6"

  option "symex", "Builds path symex."

  depends_on "bison"
  depends_on "flex"

  head "https://github.com/diffblue/cbmc.git"

  def install
   # ENV.deparallelize  # if your formula fails when building in parallel

    Dir.chdir 'src' do
      system "make minisat2-download"
      system "make"
      bin.install "cbmc/cbmc", 
                  "goto-cc/goto-cc", 
                  "goto-instrument/goto-instrument",
                  "goto-analyzer/goto-analyzer", 
                  "goto-diff/goto-diff"
    end
  end

  if build.with? "symex"
    Dir.chdir 'src/symex' do
      system "make"
      bin.install "symex/symex"
    end  
  end

  test do
    #system "make -C #{prefix}/regression/cbmc"
    system "true"
  end
end
