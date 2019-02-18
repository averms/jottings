# Jottings

> A theme for pandoc's html output

[Demo page.](https://a-vrma.github.io/jottings/)

## Usage

Put `jottings.html` in your pandoc data-dir and `jottings.css` wherever you like.
Change `{{jottings}}` in `jottings.html` to the path of `jottings.css`. Here is a somewhat
automated way to do that:

```shell
curl -fL "https://github.com/a-vrma/jottings/raw/master/test/jottings.css" -o "$HOME/.pandoc/templates/jottings.css"

curl -fL "https://github.com/a-vrma/jottings/raw/master/jottings.html" |
  sed "s|{{jottings}}|$HOME/.pandoc/templates/jottings.css|" > "$HOME/.pandoc/templates/jottings.html"
```

You can also copy the content of `jottings.css` to `jottings.html` inside a `style` element
if you want fully standalone files.

## License

MIT/Expat. Includes [minireset.css](https://github.com/jgthms/minireset.css/)
which is under the same license. See LICENSE file for details.
