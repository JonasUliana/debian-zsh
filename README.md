# `debian-zsh` just another fucking beautiful ZSH dotfile

I really like "emperectado" things, and my shell is not a exclusion of *my ninja way*.

### Installing `&&` Dependencies

The first, and obvious, thing you will need is `ZSH` itself, which you can install with the following statement:

```shell
$ sudo apt install zsh
```

And all this will be done with the magic of `oh-my-zsh`:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

And we'll also need `Powerlevel9k`, since our theme is based on it:

```shell
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

> Just remembering that you need `Git` on your machine!

And now this fucking setup:

```shell
curl -fsSL https://raw.githubusercontent.com/JonasUliana/debian-zsh/master/src/.zshrc > ~/.zshrc
```

And... Ta dah:

![](https://i.imgur.com/ZuvhU8Q.png)

#### Fonts Recommendation

If you don't like issues, use **SourceCodePro Nerd Font Regular** on size 13. 