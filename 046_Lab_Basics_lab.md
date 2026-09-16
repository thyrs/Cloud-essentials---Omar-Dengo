# Lab Basics lab
* step by step is at the end of this file, in case u dont remember all the commands
- if you dont have a Linux machine, you can use an online Linux terminal. For example, you can - go to https://bellard.org/jslinux/
- x86	Alpine Linux 3.12.0	Console	Yes	__click here__



```sh
**Linux LAB**(practice):
# navigate to your home directory, verfy with pwd
# 0. -si no las tiene, cree las carpetas Downloads, Desktop, Documents 
# 1. -Ingrese a la carpeta de Downloads cree un file .txt que se llame "textfile.txt" y tenga su nombre en contenido. 
# 2. -copie el file a la carpeta de Desktop, luego cambiele el nombre a "newtextfile.txt".
# 3. -agregue "buenos dias" al documento usando nano
# 4. -cree una carpeta dentro de Desktop/ que se llame "mycarpeta" y mueva el  newtextfile.txt a esa carpeta.
# 5. -elimine el "textfile.txt" dentro de Downloads
# 6. -Vuelva al home directory "~" y haga cat de "newtextfile.txt"
# 7. manda screenshot del ultimo comando


# step by step is at the end of this file, in case u dont remember all the commands
```





























## solutions:

```sh


# navigate to your home directory, verfy with pwd
cd ~
pwd
# 0. - If you don't have them, create the folders Downloads, Desktop, Documents
mkdir Downloads Desktop Documents
# 1. - Enter the Downloads folder and create a .txt file named "textfile.txt" with your name as its content.
cd Downloads/
echo "ESTEBAN R" > textfile.txt
# 2. - Copy the file to the Desktop folder, then rename it to "newtextfile.txt".
cp textfile.txt /home/admin/Desktop/newtextfile.txt
# 3. - Add "good morning" to the document using nano.
cd ~/Desktop/
nano newtextfile.txt
# 4. - Create a folder inside Desktop/ named "myfolder" and move newtextfile.txt to that folder.
mkdir myfolder
mv /home/admin/Desktop/newtextfile.txt /home/admin/Desktop/myfolder/
# 5. - Delete "textfile.txt" inside Downloads.
rm ../Downloads/textfile.txt
# 6. - Return to the home directory "~" and use cat on "newtextfile.txt".
cd ~
cat Desktop/myfolder/newtextfile.txt
# 7. Send a screenshot of the last command. #! SS
```