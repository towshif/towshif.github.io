# Markdown (.md)  in 10 mins 
Got to [https://stackedit.io/app#](https://stackedit.io/app#) and learn markdown formats

---

## Quick and Dirty

The *quick* brown fox, jumped **over** the lazy [dog](https://en.wikipedia.org/wiki/Dog).

    The *quick* brown fox, jumped **over** the lazy [dog](https://en.wikipedia.org/wiki/Dog).


## **Text Sizes** 

    # Heading 1
    ## Heading 2
    ### Heading 3

## Heading 1
### Heading 2
#### Heading 3

---

## **Text Styling** 

    *italic*
    **bold**
    ***bold-italic***
    [link](http://example.com)


*italic*

**bold**

***bold-italic***

[link](http://example.com)

---

## **Images**

    ![m'lady](http://i.imgur.com/v8IVDka.jpg)

![m'lady](http://i.imgur.com/v8IVDka.jpg)


## **Lists**

    * Item 1
    * Item 2
    * Item 3 

* Item 1
* Item 2
* Item 3 


## **Tables**

    | Item     | Value | Qty |
    | ---      | ---   | --- |
    | Computer | $1600 | 5   |
    | Phone    | $12   | 12  |
    | Pipe     | $1    | 234 |

| Item     | Value | Qty |
| ---      | ---   | --- |
| Computer | $1600 | 5   |
| Phone    | $12   | 12  |
| Pipe     | $1    | 234 |


## **Fenced Code block**   - use for codes and syntax highlighting

    ```
    // Foo
    var bar = 0;
    ```

```
// Foo
var bar = 0;
```

## Blockquotes

> Use it if you're quoting a person, a song or whatever.

> You can use *italic* or lists inside them also.
And just like with other paragraphs,
all of these lines are still
part of the blockquote, even without the > character in front.

To end the blockquote, just put a blank line before the following
paragraph.

## Preformatted text - use indentation 

    This line won't *have any markdown* formatting applied.
    I can even write <b>HTML</b> and it will show up as text.
    This is great for showing program source code, or HTML or even
    Markdown. <b>this won't show up as HTML</b> but
    exactly <i>as you see it in this text file</i>.

Within a paragraph, you can use backquotes to do the same thing.
`This won't be *italic* or **bold** at all.`



And thats it. 



# Advanced: 

## Links using link url: 

You can also put the [link URL][1] below the current paragraph
like [this][2].

   [1]: http://url
   [2]: http://another.url "A funky title"



## Code highlighting

```python
import abc
```

you will need the extension installed and update mkdocs.yml 

    pip install pygments

To enable CodeHilite, add the following lines to your mkdocs.yml:

    markdown_extensions:
    - codehilite



## Adding Latex Support 

if using mkdocs need to add `extra_javascript` tags in config file mkdocs.yml

    site_name: My Humble Website
    theme:
        name: material       #readthedocs
        highlightjs: true

    extra_javascript:
    - 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-MML-AM_CHTML'