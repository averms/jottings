# Jottings

> A theme for pandoc html

Demo page coming soon(tm)!
Have a screenshot in the interim:

![jottings example screenshot](https://user-images.githubusercontent.com/29077900/47932905-544d6e00-dea9-11e8-96a7-41fd880db4b2.png)

## Usage

Put `jottings.html` in your pandoc data-dir and `jottings.css` wherever you like.
Change `{{jottings}}` in `jottings.html` to the path of `jottings.css`. Here is a somewhat
automated way to do that:

```shell
curl -fL "https://github.com/a-vrma/jottings/raw/master/test/jottings.css" -o "$HOME/.pandoc/templates/jottings.css"

curl -fL "https://github.com/a-vrma/jottings/raw/master/jottings.html" |
  sed "s|{{jottings}}|$HOME/.pandoc/templates/jottings.css|" \
  > "$HOME/.pandoc/templates/jottings.html"
```

You can also copy the content of `jottings.css` to `jottings.html` inside a `style` element
if you want fully standalone files.

## License

MIT/Expat. See LICENSE file for details.
