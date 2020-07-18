echo " #FILE MANAGEMENT SYSTEM# "

echo " Operating in your current directory: "


i=1
while [ $i = 1 ]
   do
	echo "                     "
	echo "1) Create a new file"
	echo "2) Create a new directory"
	echo "3) Search for a file"
	echo "4) Search for a directory"
	echo "5) Delete a file"
	echo "6) Rename a file"
	echo "7) Show contents of directory"
	echo "8) Go back to main directory and enter into another directory."
	echo "9) Enter into a sub directory"
	echo "10) Exit Program"
	echo "Enter your choice"
	read choice

	case $choice in 
	1)
	echo "Enter new file name to be created : "
	read newfile
	if [ -f $newfile ]
       	then
	   echo " This file already exists!"
	else 
	   touch $newfile
	   echo "File created successfully."
   	fi;;
   	
   	2)
	echo "Enter new directory name : "
	read newdirec
	if [ -d $newdirec ]
       	then
	   echo "Directory already exists!"
	else 
	   mkdir $newdirec
	   echo "Directory created successfully."
   	fi;;

	3) 
	echo "Enter file name to search for : "
	read searchfile
	if [ -f $searchfile ]
       	then
	   echo "File exist in this directory"
	else 
	   echo "No such file exists in this directory"
	fi;;
	
	4) 
	echo "Enter directory name to search for :  "
	read searchdirec
	if [ -d $searchdirec ]
       	then
	   echo "Directory found !"
	else 
	   echo "No such directory exists"
	fi;;

	5) 
	echo "Enter the name of the file to delete : "
	read dfile
	if [ -f $dfile ]
       	then 
	   rm $dfile
	   echo "File deleted successfully"
	else 
	   echo "File doesn't exist"
	fi;;
	
	6) 
	echo "Enter name of file to be rename : "
	read ofile
	if [ -f $ofile ]
       	then
	   echo "Enter new file name : "
   	   read nfile 
	   mv $ofile $nfile 
    	   echo "The file is successfully renamed"
	else 
    	   echo "No such file exists"
	fi;;

	7)
	ls;;

	8) 
	cd ..
	echo "You have come back to the main directory"
	echo "Enter name of the directory - "
	read dname
	if [ -d $dname ]
       	then 
	   cd $dname
   	   echo "Switched to $dname"
	else 
     	   echo "Directory doesn't exist."
	fi;;
	
	9) 
	echo "Enter name of the directory - "
	read dnam
	if [ -d $dnam ]
       	then 
	   cd $dnam
   	   echo "Switched to $dnam"
	else 
     	   echo "Directory doesn't exist."
	fi;;

	10) 
	echo "Exit Success. "
	i=0
	;;

	esac

done
