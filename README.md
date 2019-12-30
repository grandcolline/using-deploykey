# using-deploykey

GitHub Actions for execute Git command using Deploy key.

## Usage

### inputs

* `cmd` is command you want to execute.
* `dir` is relative path to execute command.

### environments

set Deploy key.
* key is `DEPLOY_KEY_[URL]`. `[Url]` is replaceall `[^0-9a-z]` to `_`
* value is secret key.

If ssh url is `git@github.com:grandcolline/private.git`, key is `DEPLOY_KEY_git_github_com_grandcolline_private_git`.

```bash
$ echo 'git@github.com:grandcolline/private.git' | sed -e "s/'//g" -e 's/[^0-9a-z]/_/g' -e "s/^/DEPLOY_KEY_/g"
DEPLOY_KEY_git_github_com_grandcolline_private_git
```

## Examples

```
- uses: actions/checkout@v1
- uses: grandcolline/using-deploykey@master
  with:
    cmd: "git clone git@github.com:grandcolline/private.git"
  env:
    DEPLOY_KEY_git_github_com_grandcolline_private_git: ${{ secrets.p1 }}
```

```
- uses: actions/checkout@v1
- uses: grandcolline/using-deploykey@master
  with:
    cmd: "git submodule sync --recursive"
    dir: "modules/"
  env:
    DEPLOY_KEY_git_github_com_grandcolline_private1_git: ${{ secrets.p1 }}
    DEPLOY_KEY_git_github_com_grandcolline_private2_git: ${{ secrets.p2 }}
```

## Reference

[nazoking/git-multi-ssh.sh](https://github.com/nazoking/git-multi-ssh.sh)

