# Publishing Markdown Documents
There are many software and tools for publishing md into different formats. Most uses are its html applications for generating static webpages. Here we will be learning about a simple python based program called *MKdocs*. We will be using mkdocs to publish reports and data for our future projects. 

---

## Publishing  

More info on [How Does publishing work?](https://www.markdownguide.org/getting-started#how-does-it-work)

![](https://d33wubrfki0l68.cloudfront.net/75cdd78aba218a9abbfe91d2ba2cf540a7502d8c/553fa/assets/images/process.png)

1. Create a Markdown file using a text editor or a dedicated Markdown application. The file should have an .md or .markdown extension.
2. Open the Markdown file in a Markdown application.
3. Use the Markdown application to convert the Markdown file to an HTML document.
4. View the HTML file in a web browser or use the Markdown application to convert it to another file format, like PDF.

There are a number of markdown publishing/ conversion utilities like `MKdocs`, `Jekyll`, `Hugo`, `Docusaurus`, `Read the Docs`, `Pandoc`, `Sphynx`. For this tutorial we will be using a simple one: `MKdocs`.


## **MKdocs** - A simple documentation engine written in Python.

* [MKdocs Website ](https://www.mkdocs.org/)
* [MKdocs Quick Start](https://varrette.gforge.uni.lu/blog/2018/01/18/tutorial-mkdocs-and-readthedocs/)

---

## Quick Install, Dev and Build with mkdocs

    # Install mkdocs and themes
    pip install mkdocs --user
    
    # Install extensions and material theme
    pip install pymdown-extensions mkdocs-material pygments --user

    # Start mkdoc markdown engine for local viewing 
    python -m mkdocs serve

    # build mkdocs markdhown --> html
    python -m mkdocs build


## Start a new mkdocs project in project root directory 
To initialise a project with mkdocs, just run the following command from the root directory of your repository:

    mkdocs new .       # initialize 'mkdocs.yml' and docs/ in current directory

    # OR create a mkdocs projects `myproject` with 'mkdocs.yml' and 'docs/' initialized
    mkdocs new myProject  

In case mkdocs binary is not in your path user `python -m mkdocs` for all mkdocs operations. 

You will see there are two new items created in out project root directory (.)

+ `docs/` - a new directory created containing an `index.md` file in it 
+ configuration file:  `mkdocs.yml` 

Then you just need to edit the `mkdocs.yml` file to reflect the left menu you wish to offer, with relative paths from the docs/ directory toward the markdown file you want to display.


---

## Setup mkdocs configuration
Create or modify a configuration file `mkdocs.yml` in your project root directory. 

Example configuration: 
 
    # mkdocs.yml -- MkDocs configuration, all *.md files relative to docs/
    
    site_name: Less-Than-10 Tutorials (<10)

    theme: 
        name: material  #readthedocs # material
        highlightjs: true  # only for readthedocs

    site_url: https://username.github.io

Note we are using the git repo website link as site_url since that is the homepage (entrypoint) for our website.

---

## Ready to write markdown documents in `docs/`
All our markdown files should be contained in this directoy. Best practice is to start any empty folder with a `index.md` in the docs/. On any web server / service, index is always the entrypoint for any folder or path or url. Then you can add directories or files in any order. Only make sure to add an `index.md` inside each subdirectory created.


---

## Build the mkdocs project
We will be using `mkdocs` for publishing markdown in to web html. 

    mkdocs build [DIRECTORY]   # build/ convert .md filed into .html and put in site/ directory.

Once you run this command you will see a new directory called `site/` which contains the `html` files generated from the .md documents. Now this folder is ready to be hosted on the web. 

----

## Advanced: More Examples of config for `mkdocs.yml`

#### Custom Navigation menu (pages). 

    # mkdocs.yml -- MkDocs configuration, all *.md files relative to docs/
    site_name: UL HPC Developpers Documentaion
    
    pages:
    - Home: 'index.md'
    - Tools:
        - SSH: 'tools/ssh.md'
        - Git: 'tools/git.md'
    - Configuration:
        - CA Certificates: 'config/certificates/README.md'
    
    theme: readthedocs


#### Code Syntax Highlighting and Math Support with MathJax

    site_name: My Humble Website
    theme:
        name: readthedocs
        highlightjs: true

    extra_javascript:
    - 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-MML-AM_CHTML'

 For `material-docs` theme with mkdocs you will need the extension installed and update mkdocs.yml 

    pip install pygments

    To enable CodeHilite, add the following lines to your mkdocs.yml:

    markdown_extensions:
    - codehilite