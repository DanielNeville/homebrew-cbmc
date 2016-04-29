# homebrew-cbmc
A Brew file to install CBMC/CProver suite of tools.

As simple as:

> brew install DanielNeville/cbmc/cbmc


Binaries linked: cbmc, goto-instrument, goto-cc, goto-analyzer

Want path Symex too?

> brew install DanielNeville/cbmc/cbmc --with-symex

Binary linked: symex

Note:  Not all dependencies necessarily listed.
Please execute: xcode-select --install 
(if not previously executed on your machine.)


Ubuntu?  Latest stable Ubuntu at: 

After viewing, install with (to './cbmc' folder):

curl -s https://raw.githubusercontent.com/DanielNeville/homebrew-cbmc/master/cbmc-ubuntu-5.4.sh | bash /dev/stdin
