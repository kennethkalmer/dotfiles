# Get the current branch merged to master
function _no_ff_to_master() {
  ref=$(current_branch)
  git co master
  git merge --no-ff $ref
  git branch -d $ref
}
alias gtm="_no_ff_to_master"
