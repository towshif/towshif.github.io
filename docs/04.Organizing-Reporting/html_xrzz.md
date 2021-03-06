# Exercise: Create a webpage on Github.io

In the previous tutorial we already hosted a simple index.html file with "Hello World" text. We will further develop on this repository and create a better webpage to display your bio. 


## Problem statement: What do we want to achieve ?
This is the [bio page](https://towshif.github.io/) we will try to mimic. As you can see there are a few components we want to update first.

* Title 
* Profile images  
* Bio text 

## Modifying HTML Template 

Lets get started 

1. Download the `sample_index.html` file 
    The sample html file for this page is available here 
    
    > [https://raw.githubusercontent.com/towshif/towshif.github.io/master/docs/Samples/sample_index.html](https://raw.githubusercontent.com/towshif/towshif.github.io/master/docs/Samples/sample_index.html)

    To download this file we will fire command `wget`

        # cd to your local repo directory 
        cd username.github.io
        
        # download the file from link using wget 
        wget https://raw.githubusercontent.com/towshif/towshif.github.io/master/docs/Samples/sample_index.html

    This will download this `sample_index.html` file to you current directory. Now we want to make this our `index.html`. 

        # delete existing index.html 
        rm index.html 

        mv sample_index.html index.html 

        # check if all went well 
        ls 


2. Update `index.html` with your image, text and email
    Now we are ready to modify this file and update the images, Bio text and email addresses. For beginners I have created some placeholders inside this file for you to update. Lets open the `index.html` file in `nano` editor.
    
    First update the *title* of your webpage. Replace the text `[YOUR-NAME]` with some text/ name of your choice.

        <title>[YOUR-NAME]</title>

    Now lets change your *profile image*. To do this first you need to find the url of an image you want to put. Easiest way is it to go to your linkedin profile and open your profile image in new tab. Copy the image URL from browser address bar and then paste it in the HTML. 
    There two occurrences of the text `[YOUR_MEDIA_IMAGE_LINK]` wrapped within a `<img>` tag. Example below. 

        <img src="[YOUR_MEDIA_IMAGE_LINK]" alt="my face" class="Introduction-image u-photo"> 

    Replace the text `[YOUR_MEDIA_IMAGE_LINK]` with the profile image link from linkedin. Alternatively you can find some other image from some other hosting platform like facebook, google+ etc. Just make sure the image url is publicly accessible. ( Open an incognito window in chrome and try to access the link.)

    Similarly update the *email id* by replacing text in `[YOUR_EMAIL]@gmail.com]`. There are a total of 4 occurrences of this tags

         <a href="mailto:[YOUR_EMAIL]@gmail.com" class="u-email">[YOUR_EMAIL]@gmail.com</a>

    Finally update your bio text that are contained here

        <h1>
            Hi, I'm <a href="#" class="u-url u-uid p-name">Konfuzed Banda</a> </h1>
        <p> I'm the CTO and one of the Co-Founders at A Company. I like things on Github as well. </p>

3. Sync this with github.io repo. 
        
        git add --all 
        git commit --all 
        # write a commit message 

        # now sync these updates with github repo 
        git push 

    We are all set to view our bio page at https://username.github.io with updated picture and information. 


## Modifying links and navigation  

1. Update the social `links` for Instagram, Linkedin, GitHub with your own links by replacing the `#` in the `href=` tags 

        <li class="SocialList-item"><a href="#" rel="me">LinkedIn</a> </li>
        <li class="SocialList-item"> <a href="#" rel="me">Instagram</a> </li>
        <li class="SocialList-item"> <a href="#" rel="me">GitHub</a> </li>

2. Update the `navigation links` on top right in the same way. Replace the text or `#` in the `href=` tags with approproate links to your pages. 

        <li class="Navigation-listItem">
            <a href="site/about" class="Navigation-link">About</a> </li>
        <li class="Navigation-listItem">
            <a href="#" class="Navigation-link">Articles</a> </li>
        <li class="Navigation-listItem"> 
            <a href="#" class="Navigation-link">Notes</a> </li>
        <li class="Navigation-listItem">
            <a href="#" class="Navigation-link">Bookmarks</a> </li>
        <li class="Navigation-listItem"> 
            <a href="#" class="Navigation-link">Contact</a> </li>
    
    A `<a>` link tag has 2 main items. 
    
    * the `href=` link and 
    * the display text. Examples below

    Here the "site/about" is the link and "About" is the display text. 
        
        <a href="site/about" class="Navigation-link">About</a> </li>
        
    Here "#" is the link and "LinkedIn" is the display text. 

        <a href="#" rel="me">LinkedIn</a> </li>



## References

* [Github Pages Getting Started Video - Youtube](https://www.youtube.com/watch?v=RaKX4A5EiQo)
* [Github Pages](https://guides.github.com/features/pages/)
