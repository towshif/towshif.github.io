# Exercise: Git and Github


1. Go to [https://github.com](https://github.com) and login. 

    Create a new repository (aka repo) with a name for the project. In this example we will use `project101` as you repo name. Copy the git repo link (HTTPS) from the Download tab. 

    Now on your local machine, go to the directory under which you want this git project and clone this repo. 

        # clone the git repo you created
        git clone https://github.com/YOUR-USERNAME/project101.git
        
        # check local dir 
        ls 
        
        # you should be able to see repo directory
        # cd into this git project dir 
        cd project101

2. Now that we have setup the repo locally, let us write some simple code in `C`.
    
    Create a file `helloworld.c`
    
        #include <stdio.h>
        
        int main () {
            printf("Hello World from Unix\n");
            return 0;
        }

    Now compile and run it 

        cc helloworld.c
    This will generate the compiled binary `a.out`. Run `ls` command to check if this file exists. 
    
    To run the compiled binary 

        ./a.out
        Hello World from Unix

    Lets write a helloworld program in `python`. 
    
    Create a new file `helloworld.py`, open it in nano editor and write the following single line of python code. 

        print ("Hello World from Unix")

    There is no compilation step in python since it is an interpreter based language like `sh`, `bash`, `perl`. Whereas `C`, `Java`, `C#` are compiled languages and needs a compiler to convert them into binary. To run this python program we fire the following commands 
    
        python helloworld.py
        Hello World from Unix
        
3. Now that we have this code we want to sync this with github. So we need to go to the `projects101/` root directory and then run git add, commit and push. Also we run git congif + pull to save out credentials since this is our first push. 

        git add --all 
        git commit --all 
        # you will be asked for commit message 
        
        git push 
        # you will be asked for github username and password. 

        git config credential.helper store
        git pull
        # run these two so that your credentials are locally saved and git would not ask user/pass next time you push 

4. Now navigate to your online repo at https://github.com/YOUR-USERNAME/project101. You should be able to see the files `helloworld.c` and `hellowold.py`. Click on them and browse through the contents. 

5. Lets get back to the terminal/ shell that we were using and make changes into these two files. 

    We will create an `addme()` function in each of the `helloworld.c` and `hellowold.py` files. The purpose of this function is to add two integers and then we want to print the sum as output from the code. The new `helloworld.c` code as follows:

        #include <stdio.h>
        
        int addme (int a, int b) {
            return (a+b);
        }


        int main () {
            printf("Hello World from Unix. I am KrazyCoder.\n");
            printf("I added: 5 + 7 = %d\n", addme(5,7));
            return 0;
        }

    Compile and run the file `helloworld.c`
        
        cc helloworld.c
        ./a.out 
        Hello World from Unix. I am KrazyCoder.
        I added: 5 + 7 = 12


    Now lets write the same function `addme()` in python inside `helloworld.py` as follows 

        def addme (a, b):
            return (a+b)

        print ("Hello World from Unix. I am KrazyCoder")
        print ("I added: 5 + 7 = ", addme(5,7))
    
    Note Python has a simpler syntax; it does not need for `;` at line endinngs and variable declaration like `int`, `string`, `float` etc. Also pay attention to the tab/ indentation for functions and loops. There are no curly braces `{}` in python so the indent defines the content within a function or subroutine. 

    Lets run the python file and you will get the folloeing output. 
        
        python helloworld.py 
        Hello World from Unix. I am KrazyCoder
        ('I added: 5 + 7 = ', 12)

6. Now that we have completed making changes to both the files, lets sync these changes to the online github repo. 

        git add --all 
        git commit --all 
        # you will be asked for commit message 
        
        git push 
        # you will be asked for github username and password. 

    Got to github.com and see the changes in your repo at github.com. 


7. Visualize/ track changes on github.com

    In your github repo page click on "Commits" link. This will show all the commits you have made. Select one of them to view what files were changed and the code changes you made in each one of the. Color coding green with a `+` indicate addition and red `-` means deletions. 
    
    There are two options for viewing changes.  
    
    + "Unified" - shows the changes together and 
    + "Split" - shows the change side by side as shown in the image below. 

    ![github-difference](https://github.githubassets.com/images/modules/site/product-illo/img-see-the-difference.png)


This marks the end of this github tutorial. Feel free to check the references in the previous page if you want to learn more on git and github features.