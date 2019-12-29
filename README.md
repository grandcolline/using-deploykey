# using-deploykey

Run git command using Deploy key

## Usage

```
- uses: actions/checkout@v1
- uses: grandcolline/using-deploykey@master
  with:
    cmd: "git clone git@github.com:grandcolline.private.git"
  env:
    DEPLOY_KEY_git_github_com_grandcolline_private_git: ${{ secrets.p1 }}
```

```
- uses: actions/checkout@v1
- uses: grandcolline/using-deploykey@master
  with:
    cmd: "git submodule sync --recursive"
  env:
    DEPLOY_KEY_git_github_com_grandcolline_private1_git: ${{ secrets.p1 }}
    DEPLOY_KEY_git_github_com_grandcolline_private2_git: ${{ secrets.p2 }}
```

## Reference

[nazoking/git-multi-ssh.sh](https://github.com/nazoking/git-multi-ssh.sh)

