# Markdown (.md)  in 10 mins 
Got to [Dillinger.io](https://dillinger.io/) and learn markdown formats.

---

**Markdown** is a lightweight markup language with plain text formatting syntax. Its design allows it to be converted to many output formats like `pdf`, `html`, `doc` etc. 
Markdown is a fast and easy way to take notes, create content for a website, and produce print-ready documents. It was designed for the web, so it should come as no surprise that there are plenty of applications specifically designed for creating website content.

References: 

* [https://blog.ghost.org/markdown/](https://blog.ghost.org/markdown/)
* [Dillinger.io](https://dillinger.io/)
* [https://stackedit.io/app#](https://stackedit.io/app#)

**Getting started**

The best way to get started with Markdown is to use it. That’s easier than ever before thanks to a variety of free tools.

>[Dillinger.io](https://dillinger.io/) is one of the best online Markdown editors. Just open the site and start typing in the left pane. A preview of the rendered document appears in the right pane.

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



## **Videos**

You can use direct html code in Markdown as you would in regular html. So just paste the embedding link from youtube like example below and your video will be embedded in the page.

    <iframe width="560" height="315" src="https://www.youtube.com/embed/CH1XGdu-hzQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    
<iframe width="560" height="315" src="https://www.youtube.com/embed/CH1XGdu-hzQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


2nd [Hard] way: this will not embed the video but will create a link to navigate to the video link page.

    [![Gangnal Style](https://i.ytimg.com/an_webp/9bZkp7q19f0/mqdefault_6s.webp?du=3000&sqp=CNvwyuEF&rs=AOn4CLAT7gjHaf7EycGvpZcJZm-4TPvRjA)](https://www.youtube.com/watch?v=9bZkp7q19f0)

[![Gangnal Style](https://i.ytimg.com/an_webp/9bZkp7q19f0/mqdefault_6s.webp?du=3000&sqp=CNvwyuEF&rs=AOn4CLAT7gjHaf7EycGvpZcJZm-4TPvRjA)](https://www.youtube.com/watch?v=9bZkp7q19f0)




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

---

# **Advanced Usage:** 

## Links using link url: 

You can also put the [link URL][1] below the current paragraph
like [this][2].

   [1]: http://url
   [2]: http://another.url "A funky title"



## Code highlighting
    
```javascript
for(var i = 0; i < 5; i++){
    Console.log("Hello");
}
``` 

* For `material-docs` theme with mkdocs you will need the extension installed and update mkdocs.yml 

        pip install pygments

    To enable CodeHilite, add the following lines to your mkdocs.yml:

        markdown_extensions:
        - codehilite

* For default mkdocs theme `readthedocs` which has inbuilt syntax highlighting, please include `highlightjs` on the mkdocs.yml 

        theme:
            name: readthedocs
            highlightjs: true


## Adding Latex Support 

if using mkdocs need to add `extra_javascript` tags in config file mkdocs.yml

    site_name: My Humble Website
    theme:
        name: material       #readthedocs
        highlightjs: true

    extra_javascript:
    - 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-MML-AM_CHTML'