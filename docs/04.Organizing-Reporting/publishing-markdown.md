# Publishing Markdown Documents
Markdown is a raw text format for storing structures information for various uses. It can be easily converted into various other formats like `pdf`, `html`, `doc`, etc 

---

## **MKdocs** - a markdown publishing utility
 
### 1. Setup mkdocs configuration
Create a configuration file `mkdocs.yml` in your project root directory and thats it.

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

### 2. Build the mkdocs project
We will be using `mkdocs` for publishing markdown in to web html. 

    mkdocs build [DIRECTORY]

---

## mkDocs - A simple documentation engine written in Python.

* [MkDocs Website ](https://www.mkdocs.org/)
* [MkDocs Quick Start](https://varrette.gforge.uni.lu/blog/2018/01/18/tutorial-mkdocs-and-readthedocs/)

