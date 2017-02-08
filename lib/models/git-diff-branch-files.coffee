git = require '../git'
DiffBranchFileChooser = require '../views/git-diff-branch-file-chooser'

module.exports = (repo) ->
  git.cmd(['branch', '--no-color'], cwd: repo.getWorkingDirectory())
  .then (data) -> new DiffBranchFileChooser(repo, data)
