# Exercise: Create webpage on Github.io

In the previous tutorial we already hosted a simple index.html file with "Hello World" text. We will further develop on this repository and create a better webpage for you bio. 

This is the [bio page](https://towshif.github.io/) we will try to mimic. As you can see there are a few components we want to update first.

* profile images  
* Bio text 

The sample html file for this page is available here https://raw.githubusercontent.com/towshif/towshif.github.io/master/docs/Samples/sample_index.html

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

Now we are ready to modify this file and update the images, Bio text and email addresses. 


