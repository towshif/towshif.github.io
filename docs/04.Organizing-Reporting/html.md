# Creating a Webpage with Github.io

Before we go into creating a webpage we would want to learn some basics of `html`

## Intro to html
Hypertext Markup Language (`HTML`) is the standard markup language for creating web pages and web applications. With Cascading Style Sheets (CSS) and JavaScript, it forms a triad of cornerstone technologies for the World Wide Web.

## Basic components of an HTML file/ source
An HTML file consists of `tags` or `elements` that define behavior of its components.

The basic components are as follows. More reference materials [here](https://html.com/#Creating_Your_First_HTML_Webpage)

* `html` tag - this is the top level wrapper that wraps all the elements of the html.
* `head` tag - this contains header information of the like like title, styles and scripts as separate tags within this tag as mentioned below in the sub bullets.
    * `title` tag - Contains text for the title of the page. This will showup as the title of browser
    * `styles` tag - Conatains the styles ( color, width, formatting etc.) of the elements of this page that are contained in the body of the html
    * `script` tag - Contains the brain or logic of the operations in this page. For eg. if you have interactive elements like buttons or dropdowns their function/ behavior when a user clicks on them is contained here.
* `body` tag - this contains all the text that is visible in the webpage. 

This is an outline of basic format of an `html` source

    <html>
        <head>
            <title></title>            
            <styles></styles>                        
            <script></script>                            
        </head>
        
        <body>
                //This body tag contains contains all the text that is visible in the webpage. 
        </body>

    </html>


There are a lot more html elements that have custom use and are contained in the `body` tag, however in this tutorial we will cover only a few of them. The elements are referred to as html `tags`. Tags are basically containers of text or instructions with a specific purpose defining the behaviour of the element.

Some common html elements are: 

* `<p>` tag - paragraph 
* `<h1>, <h2>, <h3>` tag - headers of different font size; 1 being largets and then bigger the h-number smaller the font 
* `a` tag - this is a link tag that often contains a `href` link. We usually see them as clickable links on a webpage. Usage Syntax:
    
        <a href="URL"> DISPLAY-TEXT </a>

        where URL is the link and DISPLAY-TEXT is what gets displayed on the page which can be clicked.

* `img` tag - this tag contains a image that we want to display on our webpage. It  contains a `src` source link to the image file or URL. Usage syntax: 

        <img src="http://IMAGE_URL"  ..styles..text...etc... >

Note: a tag once opened must be closed to resemble a valid HTML code. 
Eg. a paragraph tag starts with `<p>` and must end with `</p>`. This is true for all elements of html.

Now that we have a basic understanding of `HTML` lets dive into some coding. We will create a basic webpage and host this page on *github pages*. 


---

## Github pages at github.io

Github pages arewWebsites for you and your projects that are hosted directly from your GitHub repository. Just edit, push, and your changes are live.

Quick Steps to setup a github page: 

1. Create a repository: 
    
    Head over to GitHub and create a new repository named `username.github.io`, where username is your username (or organization name) on GitHub.

    *If the first part of the repository doesn’t exactly match your username, it won’t work, so make sure to get it right.*

    ![new repo](https://pages.github.com/images/user-repo@2x.png)

2. Head over to your git client: terminal/ shell 

3. Clone the repository: 

    Go to the folder where you want to store your project, and clone the new repository. 
        
        git clone https://github.com/username/username.github.io

4. Add an `index.html` file - this the entrypoint of your website 
        
        cd username.github.io        
        touch index.html 
        nano index.html 
        # and write "Hello World". 
        # Save exit 

5. Push this file to your github repo 

        git add --all
        git commit --all
        git push 

6. You are done. Fire up a browser and go to https://username.github.io. and you can see your webpage live.