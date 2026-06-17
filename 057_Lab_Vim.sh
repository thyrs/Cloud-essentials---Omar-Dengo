#? Lab vi
# 0. navigate to your home directory "cd ~"and make sure with the command "pwd"
# 1. Redirect the contents of /var/log/dpkg.log to a file named "mylogs.txt" in your home directory. (/var/log/dnf.log for redhat users)
# 2. Open the file in vi, navigate to the end, move up 3 lines, and insert the following on a new line:
#    "My first name is [Your First Name]."
# 3. Save the file (:w) and exit vi (:q). Then, display the last 7 lines of the file in the terminal.
# 4. Reopen "mylogs.txt" in vi, navigate to the line containing "My first name is [Your First Name].",
# 5. Still in vi, replace every occurrence of the word "status" with your full name in uppercase ("DDEBUG"  for redhat users)
# 6. Display only the last 5 lines of the file with line numbers, 
#    then use grep to filter and show only lines containing your name in uppercase. #! SS
