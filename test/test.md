---
title: example.md
lang: en
---

<!-- markdownlint-disable -->

## Other stuff
### Table
#### mindoc
##### Head 5
###### Head 6

| Template variable | Value appears in:                                  |
|:------------------|----------------------------------------------------|
| `description`     | Content of HTML tag `meta name="description"`      |
| `headnote`        | Document, preceding value of variable `published`  |
| `published`       | Document, preceding value of variable `license`    |
| `license`         | Document, preceding value of variable `title`      |
| _version_         | Document, preceding value of variable `date`       |
| `abstract`        | Document, preceding the table of contents (if any) |

----

## Overview

### Philosophy

Markdown is intended to be as easy-to-read and easy-to-write as is feasible.

Readability, however, is emphasized above all else. A Markdown-formatted document should
be publishable as-is, as plain text, without looking like it's been marked up with tags or
formatting instructions. While Markdown's syntax has been influenced by several existing
text-to-HTML filters --- including
[Setext](http://docutils.sourceforge.net/mirror/setext.html),
[atx](http://www.aaronsw.com/2002/atx/), [Textile](http://textism.com/tools/textile/),
[reStructuredText](http://docutils.sourceforge.net/rst.html),
[Grutatext](http://www.triptico.com/software/grutatxt.html), and
[EtText](http://ettext.taint.org/doc/) --- the single biggest source of inspiration for
Markdown's syntax is the format of plain text email.
H~2~O is a liquid and an example of subscript.

## Block Elements?

### Paragraphs and Line Breaks

A paragraph is simply one or more consecutive lines of text, separated
by one or more blank lines. (A blank line is any line that looks like a
blank line -- a line containing nothing but spaces or tabs is considered
blank.) Normal paragraphs should not be indented with spaces or tabs[^2].

The implication of the "one or more consecutive lines of text" rule is
that Markdown supports "hard-wrapped" text paragraphs. This differs
significantly from most other text-to-HTML formatters (including Movable
Type's "Convert Line Breaks" option) which translate every line break
character in a paragraph into a `<br />` tag.

When you _do_ want to insert a `<br />` break tag using Markdown, you
end a line with a `\`.

[^2]: Another one my dudes. This time it is very longgg.
      Yepp. So long, pop! I'm off to check my tiger trap! I rigged a tuna fish
      sandwich yesterday, so I'm sure to have a tiger by now!

### Blockquotes

Markdown uses email-style `>` characters for blockquoting. If you're
familiar with quoting passages of text in an email message, then you
know how to create a blockquote in Markdown. It looks best if you hard
wrap the text and put a `>` before every line:

> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
> consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
> Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
> 
> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
> id sem consectetuer libero luctus adipiscing.

Blockquotes can be nested (i.e. a blockquote-in-a-blockquote) by
adding additional levels of `>`:

> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.

Blockquotes can contain other Markdown elements, including headers, lists,
and code blocks:

> ## This is a header.
> 
> 1. This is the first list item.
> 2. This is the second list item.
> 
> Here's some example code:
> 
> `return shell_exec("echo $input | $markdown_script");`

Any decent text editor should make email-style quoting easy. For
example, with BBEdit, you can make a selection and choose Increase
Quote Level from the Text menu.

### Lists

Markdown supports ordered (numbered) and unordered (bulleted) lists.

Unordered lists use asterisks, pluses, and hyphens -- interchangably
-- as list markers:

* Red
* Green
* Blue

Ordered lists use numbers followed by periods:

1. Bird
1. McHale
1. Parish

or even:

3. Bird
1. McHale
8. Parish

In pandoc, the number you start with is just incremented. So if I start with 3 and then
use random numbers afterwards, the list is normalized to start at 3 and count by ones.

List items may consist of multiple paragraphs. Each subsequent
paragraph in a list item must be indented by either 4 spaces
or one tab:

1. This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer
   adipiscing elit. Aliquam hendrerit mi posuere lectus.
   
   ὅσοι οἰόμεθα κακὸν εἶναι τὸ
   τεθνάναι. μέγα μοι τεκμήριον τούτου γέγονεν: οὐ γὰρ ἔσθ᾽ ὅπως οὐκ ἠναντιώθη ἄν μοι τὸ
   εἰωθὸς σημεῖον, εἰ μή τι ἔμελλον ἐγὼ ἀγαθὸν πράξειν. ἐννοήσωμεν δὲ καὶ τῇδε ὡς πολλὴ
   ἐλπίς ἐστιν ἀγαθὸν αὐτὸ εἶναι. δυοῖν γὰρ θάτερόν ἐστιν τὸ τεθνάναι: ἢ γὰρ οἷον μηδὲν
   εἶναι μηδὲ αἴσθησιν μηδεμίαν μηδενὸς ἔχειν τὸν τεθνεῶτα, ἢ κατὰ τὰ λεγόμενα μεταβολή
   τις τυγχάνει οὖσα καὶ μετοίκησις τῇ ψυχῇ τοῦ τόπου τοῦ ἐνθένδε εἰς ἄλλον τόπον. καὶ
   εἴτε δὴ μηδεμία αἴσθησίς ἐστιν ἀλλ᾽
    
2. Suspendisse id sem consectetuer libero luctus adipiscing.

It looks nice if you indent every line of the subsequent
paragraphs, but here again, Markdown will allow you to be
lazy:

* This is a list item with two paragraphs.  This is the second paragraph in the list item.
  You're only required to indent the first line. Lorem ipsum dolor sit amet, consectetuer
  adipiscing elit.
* Another item in the same list.

Blockquotes within list items are not supported by output.

* A list item with a blockquote:
  
  > This is a blockquote
  > inside a list item.

Here is a definition list.

Term 1
  ~ uno
    ek
Term 2
  ~ dos
    do

### Code Blocks

```haskell
<-< <<- <-- <- <-> -> --> ->> >->
<=< <<= <==    <=> => ==> =>> >=>
    >>= >>- >- <~> -< -<< =<<
        <~~ <~ ~~ ~> ~~>
```

Pre-formatted code blocks are used for writing about programming or
markup source code. Rather than forming normal paragraphs, the lines
of a code block are interpreted literally. Markdown wraps a code block
in both `<pre>` and `<code>` tags.

This is a normal paragraph:

    This is a classless code block.

Here is an example of AppleScript (not highlighted by pandoc):

```{.applescript}
tell application "Foo"
  beep
end tell
```

Here is an include:

```{.python nope=yeet file=../../log_generator/log_generator.py #yee}
```

A code block continues until it reaches a line that is not indented
(or the end of the article).

Regular Markdown syntax is not processed within code blocks. E.g.,
asterisks are just literal asterisks within a code block. This means
it's also easy to use Markdown to write about Markdown's own syntax.

### Math

Inline is `$_$` and block is `$$_$$`. Pandoc will pass-through raw so you can also
use typical `amsmath` constructs.

\begin{align}
f(x) &= \int \sin^3 x \cos^2 x \,dx \\
     &= -\frac{\cos^3 x}{3} + \frac{\cos^5 x}{5} + C
\end{align}

Equation environment (no numbering):

\begin{equation*}
\int \sin^3 x \cos^2 x \,dx
= -\frac{\cos^3 x}{3} + \frac{\cos^5 x}{5} + C
\end {equation*}

Here is some math that will also work with html output:
$$E=mc^2$$

## Span Elements

### Links

Markdown supports two style of links: *inline* and *reference*.

In both styles, the link text is delimited by [square brackets].

To create an inline link, use a set of regular parentheses immediately
after the link text's closing square bracket. Inside the parentheses,
put the URL where you want the link to point, along with an *optional*
title for the link, surrounded in quotes. For example:

This is [an example](http://example.com/ "This is a link title for example-com") inline link.

[This link](http://example.net/) has no title attribute.

### Emphasis

Markdown treats asterisks (`*`) and underscores (`_`) as indicators of
emphasis. Text wrapped with one `*` or `_` will be wrapped with an
HTML `<em>` tag; double `*`'s or `_`'s will be wrapped with an HTML
`<strong>` tag. E.g., this input:

*single asterisks*

_single underscores_

**double asterisks**

__double underscores__

### Code

To indicate a span of code, wrap it with backtick quotes (\`).
Unlike a pre-formatted code block, a code span indicates code within a
normal paragraph. For example:
