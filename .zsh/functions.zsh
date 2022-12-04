# Functions
# ---

# Get system architecture
arm() {
  arch -x86_64 $@
}

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

rbd() {
  git add . &&\
  git stash &&\
  git fap &&\
  git rebase $1 &&\
  git stash apply
}
