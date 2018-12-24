
# Markdown documentation with MkDocs and Themes

MkDocs is a simple documentation engine written in Python. Its one of the most simplistic documentation generator and is very popular for simple documentations. 

If you are looking for more advanced static document generators please check
 
* [Jekyll](https://jekyllrb.com/) by GitHub based on `Ruby Gems`
* [Hugo](https://gohugo.io/) based on `Go` language. 
Both of them are very powerfull documentation engines and have a huge community. 

For more detailed documentation please refer to [mkdocs website](https://www.mkdocs.org/#mkdocs)

## Quick start
Install the latest version of mkdocs and theme: Material with `pip`:

```
pip install mkdocs 
pip install mkdocs-material
```
Material theme also provides a lot of features and customization. Pleare refer [here](https://squidfunk.github.io/mkdocs-material/getting-started/) for more on Material Docs.

Append the following line to your project's `mkdocs.yml`:
```
theme:
  name: 'material'
```

A default theme is available. Other popular themese include `readthedocs` adapted from python sphynx and many [others](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes).

Create a `new` mkdocs project or directory. 
```
mkdocs new my-project
cd my-project
```
By default there is a single configuration file named `mkdocs.yml`, and a folder named docs that will contain your documentation source files. Right now the docs folder just contains a single documentation page, named `index.md`. Create and save your markdown documents here.

Now to see the rendered html MkDocs comes with a built-in dev-server that lets you preview your documentation as you work on it. Make sure you're in the same directory as the mkdocs.yml configuration file, and then start the server by running the mkdocs serve command:

```
mkdocs serve
INFO    -  Building documentation...
INFO    -  Cleaning site directory
[I 160402 15:50:43 server:271] Serving on http://127.0.0.1:8000
[I 160402 15:50:43 handlers:58] Start watching changes
[I 160402 15:50:43 handlers:60] Start detecting changes
```
MkDocs `serve` switch provides a local dev server with live reloading by default. More customizations are available with `--help` flag. 

```
mkdocs --help
```


For example to specify project config file `-f`, outgoing ip:port with switch `-a`. 
```
# run mkdocs on all ip without live reloading 
mkdocs serve -a 0.0.0.0:8000 --no-livereload -f /home/towshif/workspace/next/.docs/mkdocs.yml
```
```
# start local dev server with live-reload. Do not use SSL with this functionality.
# Note: 'livereload.js' will load on port 8000 (default)
mkdocs serve -a 0.0.0.0:8000 -f /home/towshif/workspace/next/.docs/mkdocs.yml
```

To Kill the process for the custom local server you can also call pkill. 
```
# to kill mkdocs server 
pkill mkdocs"
```


## References
* [MkDocs Website ](https://www.mkdocs.org/)
* [MkDocs Quick Start](https://varrette.gforge.uni.lu/blog/2018/01/18/tutorial-mkdocs-and-readthedocs/)