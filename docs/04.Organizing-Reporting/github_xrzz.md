# Exercise: Git and Github


1. Go to [https://github.com](https://github.com) and login. 

    Create a new repository (aka repo) with a name for the project. In this example we will use `Project101` as you repo name. Copy the git repo link (HTTPS) from the Download tab. 

    Now on your local machine, go to the directory under which you want this git project and clone this repo. 

        # clone the git repo you created
        git clone https://github.com/YOUR-USERNAME/Project101.git
        
        # check local dir 
        ls 
        
        # you should be able to see repo directory
        # cd into this git project dir 
        cd Project101

2. Now that we have setup the repo locally, let us write some code in `C`.
    
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

        print ("Hello World from Unix.")

    There is not compilation step in python since it is an interpreter based language like `sh`, `bash`, `perl` scripts. Where as `C`, `Java`, `C#` are compiled languages and needs a compiler to convert them into binary. To run this python program. 
    
        python helloworld.py
        Hello World from Unix
        
3. Now that we have this code we want to sync this with github. So we need to go to the `projects1` root directory and then run git add, commit and push 

        git add --all 
        git commit --all 
        # you will be asked for commit message 
        
        git push 
        # you will be asked for github username and password. 

        git config credential.helper store
        git pull
        # run these two so that your credentials are locally saved and git would not ask user/pass next time you push 

4. Now navigate to your online repo at https://github.com/YOUR-USERNAME/Project101. You should be able to see the files `helloworld.c` and `hellowold.py`. Click on them and browse through the contents. 

5. Lets get back to the terminal/ shell that we were using and make changes into these two files. 

    We will create an `addme()` function in each of the `helloworld.c` and `hellowold.py` files as follows. The purpose of this function is to add two integers and then we want to print the sum as output from the code.

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
    
    Note Python has a simpler syntax; it does not need for `;` at line endinngs and variable declaration like `int`, `string`, `float` etc. 

    Lets run the python file 
        
        python helloworld.py 
        Hello World from Unix. I am KrazyCoder
        ('I added: 5 + 7 = ', 12)


6. Now that we have completed making changes to both the files, lets sync these changes to the online github repo. 

        git add --all 
        git commit --all 
        # you will be asked for commit message 
        
        git push 
        # you will be asked for github username and password. 

    Visualize the changes in your repo at github.com. 