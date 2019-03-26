% Pandoc Test Suite
% John MacFarlane; Anonymous
% July 17, 2006

This is a set of tests for pandoc.  Most of them are adapted from
John Gruber's markdown test suite.

-----

# Headers

## Level 2 with an [embedded link](/url)

### Level 3 with *emphasis*

#### Level 4

##### Level 5

Level 1
=======

Level 2 with *emphasis*
-----------------------

### Level 3
with no blank line

Level 2
-------
with no blank line

----------

# Paragraphs

Here's a regular paragraph.

In Markdown 1.0.0 and earlier. Version
8. This line turns into a list item.
Because a hard-wrapped line in the
middle of a paragraph looked like a
list item.

Here's one with a bullet.
* criminey.

There should be a hard line break  
here.

---

# Block Quotes

E-mail style:

> This is a block quote.
> It is pretty short.

> Code in a block quote: 
> 
>     sub status {
>         print "working";
>     }
> 
> A list: 
> 
> 1. item one
> 2. item two
>
> Nested block quotes:
>
> > nested
>
>>  nested
>

This should not be a block quote: 2
> 1.

And a following paragraph.

* * * *

# Code Blocks

Code:

    ---- (should be four hyphens)

    sub status {
        print "working";
    }

	this code block is indented by one tab

And:

		this code block is indented by two tabs

    These should not be escaped:  \$ \\ \> \[ \{

----

# Lists

## Unordered

Asterisks tight:

*	asterisk 1
*	asterisk 2
*	asterisk 3

## Ordered

Tight:

1.	First
2.	Second
3.	Third

Multiple paragraphs:

1.  Item 1, graf one.

    Item 1. graf two. The quick brown fox jumped over the lazy dog's back.
  
2.  Item 2.
    ὅσοι οἰόμεθα κακὸν εἶναι τὸ
    τεθνάναι. μέγα μοι τεκμήριον τούτου γέγονεν: οὐ γὰρ ἔσθ᾽ ὅπως οὐκ ἠναντιώθη ἄν μοι τὸ
    εἰωθὸς σημεῖον, εἰ μή τι ἔμελλον ἐγὼ ἀγαθὸν πράξειν. ἐννοήσωμεν δὲ καὶ τῇδε ὡς πολλὴ
    ἐλπίς ἐστιν ἀγαθὸν αὐτὸ εἶναι. δυοῖν γὰρ θάτερόν ἐστιν τὸ τεθνάναι: ἢ γὰρ οἷον μηδὲν
    εἶναι μηδὲ αἴσθησιν μηδεμίαν μηδενὸς ἔχειν τὸν τεθνεῶτα, ἢ κατὰ τὰ λεγόμενα μεταβολή
    τις τυγχάνει οὖσα καὶ μετοίκησις τῇ ψυχῇ τοῦ τόπου τοῦ ἐνθένδε εἰς ἄλλον τόπον. καὶ
    εἴτε δὴ μηδεμία αἴσθησίς ἐστιν ἀλλ᾽
    
3.  Item 3.

## Nested

*	Tab
	*	Tab
		*	Tab

Here's another:

1. First
2. Second:
	* Fee
	* Fie
	* Foe
3. Third

Same thing but with paragraphs:

1. First

2. Second:

	* Fee
	* Fie
	* Foe

3. Third 

## Tabs and spaces

+	this is a list item
	indented with tabs

+   this is a list item
    indented with spaces

	+	this is an example list item
		indented with tabs
	
	+   this is an example list item
	    indented with spaces

## Fancy list markers

Should not be a list item:

M.A. 2007

B. Williams

----

# Definition Lists

Multiple blocks with italics:

*apple*

:   red fruit

    contains seeds,
    crisp, pleasant to taste

*orange*

:   orange fruit

        { orange code block }

    > orange block quote

Multiple definitions, tight:

apple
:   red fruit
:   computer

orange
:   orange fruit
:   bank

Multiple definitions, loose:

apple

:   red fruit

:   computer

orange

:   orange fruit

:   bank

Blank line after term, indented marker, alternate markers:

apple

  ~ red fruit

  ~ computer

orange

  ~ orange fruit

    1. sublist
    2. sublist

# HTML Blocks

Here's a simple block:

<div>
foo
</div>

This should be a code block, though:

    <div>
    foo
    </div>

As should this:

    <div>foo</div>

This should just be an HTML comment:

<!-- Comment -->

Multiline:

<!--
Blah
Blah
-->

<!--
	This is another comment.
-->

Code block:

	<!-- Comment -->

Just plain comment, with trailing spaces on the line:

<!-- foo -->   

-----

# Inline Markup

This is *emphasized*, and so _is this_.

This is **strong**, and so __is this__.

An *[emphasized link](/url)*.

***This is strong and em.***

So is ***this*** word.

___This is strong and em.___

So is ___this___ word.

This is code: `>`, `$`, `\`, `\$`, `<html>`.

~~This is *strikeout*.~~

Superscripts:  a^bc^d a^*hello*^ a^hello\ there^.

Subscripts: H~2~O, H~23~O, H~many\ of\ them~O.

These should not be superscripts or subscripts,
because of the unescaped spaces:  a^b c^d, a~b c~d.

-----

# Smart quotes, ellipses, dashes

"Hello," said the spider.  "'Shelob' is my name."

Here is some quoted '`code`' and a "[quoted link][1]".

Ellipses...and...and....

-----

# LaTeX

- $2+2=4$
- $x \in y$
- $\alpha \wedge \omega$
- $223$ 
- $p$-Tree

These shouldn't be math:

- To get the famous equation, write `$e = mc^2$`.
- $22,000 is a *lot* of money.  So is $34,000.
  (It worked if "lot" is emphasized.)
- Shoes ($20) and socks ($5).
- Escaped `$`:  $73 *this should be emphasized* 23\$.

Here's a LaTeX table:

\begin{tabular}{|l|l|}\hline
Animal & Number \\ \hline
Dog    & 2      \\
Cat    & 1      \\ \hline
\end{tabular}

* * * * *

# Special Characters

Here is some unicode:

- I hat: Î
- o umlaut: ö
- section: § 
- set membership: ∈
- copyright: ©

AT&T has an ampersand in their name.

AT&amp;T is another way to write it.

This & that.

4 < 5.

6 > 5.

Backslash: \\

- - - - - - - - - - - - -

# Links

## Explicit

Just a [URL](/url/).

[URL and title](/url/  "title preceded by two spaces").

[with\_underscore](/url/with_underscore)

[Email link](mailto:nobody@nowhere.net)

[Empty]().

## Reference

Foo [bar][a].

[a]: /url/

With [embedded [brackets]][b].

[b] by itself should be a link.

Indented [once][].

Indented [twice][].

Indented [thrice][].

This should [not][] be a link.

 [once]: /url
  [twice]: /url

   [thrice]: /url

    [not]: /url

[b]: /url/

Foo [bar][].

Foo [biz](/url/ "Title with "quote" inside").

  [bar]: /url/ "Title with "quotes" inside"

## With ampersands

Here's a [link with an ampersand in the URL][1].

[1]: http://example.com/?foo=1&bar=2

## Autolinks

* In a list?
* <http://example.com/>
* It should.

An e-mail address:  <nobody@nowhere.net>

> Blockquoted: <http://example.com/>

Auto-links should not occur here: `<http://example.com/>`

    or here: <http://example.com/>

----

# Images

From "Voyage dans la Lune" by Georges Melies (1902):

![lalune][]

[lalune]: https://user-images.githubusercontent.com/29077900/55016063-6b117000-4fc4-11e9-9c43-9f8e8983866b.jpg "Voyage dans la Lune"

Here is a movie ![movie](https://user-images.githubusercontent.com/29077900/55016070-6d73ca00-4fc4-11e9-97da-ee9ba9f9e3cb.jpg) icon.

----

# Footnotes

Here is a footnote reference,[^1] and another.[^longnote]
This should *not* be a footnote reference, because it 
contains a space.[^my note]  Here is an inline note.^[This
is *easier* to type.  Inline notes may contain
[links](http://google.com) and `]` verbatim characters,
as well as [bracketed text].]

> Notes can go in quotes.^[In quote.]

1.  And in list items.^[In list.]

# Pre and code

```{.applescript}
tell application "Foo"
  beep
end tell
```

[^longnote]: Here's the long note.  This one contains multiple
blocks.  

    Subsequent blocks are indented to show that they belong to the
footnote (as with list items).

          { <code> }

    If you want, you can indent every line, but you can also be
    lazy and just indent the first line of each block.

This paragraph should not be part of the note, as it is not indented.

  [^1]: Here is the footnote.  It can go anywhere after the footnote
  reference.  It need not be placed at the end of the document.
