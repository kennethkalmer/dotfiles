# Get the current branch merged to master
function _no_ff_to_master() {
  ref=$(current_branch)
  git co master
  git pull
  git merge --no-ff $ref
  git branch -d $ref
}
alias gtm="_no_ff_to_master"

# Rebase the current branch on master
function _rebase_from_master() {
  ref=$(current_branch)
  git co master
  git pull
  git co $ref
  git rebase master
}
alias rfm="_rebase_from_master"
