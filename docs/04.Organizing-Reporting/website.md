# Finally A Website On Github.io
Creating content for websites can be very painful from shell/ terminal. While the terminal can be used for executing commands, running the site and for many other purposes, we still need a visual code editor for creating advanced visual components and written content for webpages. For that we either need a desktop enviroment with code editors installed or an online editor with visual editing. 

Some popular code open source (free) editor for a desktop type environment are `Visual Studio Code` by Microsoft, `Atom` by Github and `Sublime Text` by Jon Skinner, Will Bond. These come with very advanced code editing features and are very easy to use.

In this tutorial however we are not going to use a desktop enviroment so rather than installing a local editor we will switch to web based editor. Some examples of hosting services that provide such editors are 

* [CodeAnywhere](https://codeanywhere.com/editor/)
* [Codenvy](https://codeanywhere.com)
* [Google Cloud Platform](https://cloud.google.com/)
* [Amazon C9](https://aws.amazon.com/cloud9/?origin=c9io)

Most of these services accept github logins as accounts (another good use of your github ID).
These come integrated with a shell (running on a virtual machine) that we can use just like any linux server for development purposes only. If you want to host a website or need a VM you will have to purchase subscription according to their plans and pricing. 

For this tutorial we will use GCP - Google Cloud Platform. Please refer to the Setup Tutorial for Google Cloud Console.

---

## Google Cloud Code editor 

Once you have setup your cloud shell environment fire up the terminal in your browser and make a clone of the repo for the website we created in the previous tutorial `username.github.io`. 

    git clone https://github.com/username/username.github.io

You will be able to visualize the repository and its folder structure in the google cloud code editor.


---
## Setup a mkdocs project

We will use our github repo `username.github.io` directory to initialize the mkdocs project. 

**Initilaize mkdocs**
    
    mkdocs new        # initialize 'mkdocs.yml' and docs/ in current directory

At this point your directory structure will look like this: 2 new items will be added to the current directory: `docs/` directory is created with an `index.md` file in it and `mkdocs.yml` config file. 

    .
    ├── docs
    │   └── index.md
    └── mkdocs.yml


**Configure mkdocs.yml** 

    # mkdocs.yml -- MkDocs configuration, all *.md files relative to docs/
    
    site_name: You Awesome Website name 

    theme: 
        name: material  

    site_url: https://username.github.io

We will be using Google's [material theme](https://squidfunk.github.io/mkdocs-material/) (same as this tutorial website). This is one of the most popular themes on the we and very easy to get started with. It also comes with in-built search capabilities within the document hosted in the sites. [Read: Material Features](https://squidfunk.github.io/mkdocs-material/#what-to-expect)

You can also try `readthedocs` theme that come packaged with mkdocs. Just update the theme name and rebuild your website to view the changes. 

---
## Create Documents 

We will already have a `docs/` directory to write files into. All the markdown documents need to be placed inside this as `[filename].md` files. As usual we should start with an `index.md` file (already created by default) as entrypoint to this directory. If you create subdirectories it is recommended that you have an `index.md` in each of them as entrypoints. However mkdocs will parse you files in order and show them in the navivgation menu even if you dont have an index file in subsequent subdirectories inside the `docs/` directory. 

Lets create 2 document like this 

* [index.md]()
* [report.md]()

To see the changes we made and how our site looks like we can start a local server inbuilt in mkdocs using `serve` option.  

    python -m mkdocs serve  
    # OR simply     
    mkdocs serve  # if mkdocs is in your $PATH

This will generate an output 

    INFO    -  Building documentation...
    INFO    -  Cleaning site directory
    [I 190106 11:53:50 server:298] Serving on http://127.0.0.1:8000
    [I 190106 11:53:50 handlers:59] Start watching changes
    [I 190106 11:53:50 handlers:61] Start detecting changes

Take a nope of the port : 8000. 

* If you are using a local desktop just navigate to http://127.0.0.1:8000 on your browser to view your mkdocs website. 

* If you are using GCP (google cloud console) you should configure preview port to 8000 to view it from google cloud console. 

In this tutorial we are using GCP so we need to configure preview port to 8000 and click preview link. This will open a new browser tab/ window and you can view your website. `mkdocs -serve` by default enables live editing so you can see changes live while you are editing the markdown documents. 

---
## Build the documents 
Once we have finalized all the markdown documents we need to build it. Building means generating the `html` files from the mkarkdown document we wrote in the `docs/` directory. 

**Build HTML**

    python -m mkdocs build     
    # OR simply 
    mkdocs build    # if mkdocs is in your $PATH

The above statement will generate the following output 

    INFO    -  Cleaning site directory
    INFO    -  Building documentation to directory: /home/your/username.github.io/site

Note the subdirectory `site/` is created in your mkdocs project which will contain all the html files that are ready to be hosted on any webserver. 

Example: For 3 markdown documents `helloworld.md`, `index.md`, `markdown.md` written in `docs/` the following show the directory structure created after building the site.

    tree -L 2
    .
    ├── docs
    │   ├── helloworld.md
    │   ├── index.md
    │   └── markdown.md
    ├── mkdocs.yml
    └── site
        ├── 404.html
        ├── assets
        ├── helloworld
        ├── index.html
        ├── markdown
        ├── search
        ├── sitemap.xml
        └── sitemap.xml.gz

In this example you will notice that for every markdown file (`xxx.md`) document in `docs/` there is a corresponding html file (`xxx.html`) created in `site/`. If you have subdirectories in the markdown docs directory, it will be replicated in the site directory. 

---
## Publish them on Github.io

The `site/` directory contains your final wesite. You can copy its contents to anyserver and point the url to it path. Your website will be up and running. 

If you want to host this `site` to be at your `username.github.io` home then you have to clean up the repo and put all the contents of `site/` directory at out repo root directory.

In this tutorial however we have a different entrypoint `index.html` at the home of the website. We will upload the entire repo to github and so we need to manually point to the `site/` directory from our landing page `index.html` which we created in the previous tutorial. 

Let update the repo `username.github.io`

    git add --all
    git commit -m "site updated"
    git push 

Check your online repo at github.com and erify your site is up at http://username.github.io/site. Note the `/site` added to your URL since we are hosting from a subdirectory at inside your repo root directory. Your website should be up and it will identical to what you previewed at the GCP console. 


Not lets link this site to out `index.html` landing page which we created in out root (previous tutorial)

Use the code editor or terminal to edit the index.html file in root dir `username.github.io/`

    # from root dir: username.github.io/
    nano index.html 

Update one the `navigation links` on top right in the same way. Replace the text or `#` in the `href=` tags with approproate links to your pages. 

    <li class="Navigation-listItem">
        <a href="site/" class="Navigation-link"> My Documents </a> </li>

The link will show as 'My Document' and point to http://username.github.io/site using the tag link in `<a href="site/"`


And that is it. You can continue developing the site and add pages. 

**Summary of the steps** 

* add markdowns in `doc/` directory 
* build them (from the mkdocs root where the mkdocs.yml exists)
* commit and push the repo to github 
* view the website at http://username.github.io/site

---

