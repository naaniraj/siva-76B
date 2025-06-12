## IMPORTTENT CONCEPT
*********************
1) Variables <br>
2) data types <br>
3) conditions <br>
4) functions <br>
5) loops <br>

   for writte python ,shall ,we follow these concept
   first we have to write step by step process of cammands

# git
______
push Authentication 
username/password  ---> freaquently we have to enter the password
username/key  --->it will be tacken by automatically from private key
### how to genrate key
***********************
go to bash 

    cd
    ssh-keygen -f daws-76d-github     # it will genrate key
  ---> enter   ---> enter

     cat daws-76d-github.pub     # to see the key that we genrated

  ---> copy the key --> go to github --> sittings --> SSH and GPG key 
  --> nwe SSH key --> tittle :test-key --> Key: paste the key that we copy

  --> in our windos .SSH folder will create ( congig )--> in the .SSH folder we have to create config file 
  copy the syntax of config file -->  and add your private key in that syntax 

      Host github .com
        Host name github .com
        user git
        preferredauthentications publickey
        IdentifyFile ~/daws-76s-github

## how to push laptop files to gitgub
--> create a folder in laptop file-exploer(some-folder) --> go to gitbash

    cd /c/devps/daws-76s/repos # go to the path of the folder
    cd some-folder
    git init # intialises a  folder as a git repo
    git status #we can know what is the status of our files
 inside the (some-folder) we can create the files (example.txt) write something inside of the file 
 for push the file into github 

$git status   -->
    
   
   

