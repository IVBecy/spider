# Spider
A file stealer in shell.

# Disclaimer:
This project is made for **ethical** and demonstration purpose only.
My first actual project in Bash, so there's space for improvement.   

# Compatibility
- [x] Windows
- [ ] Linux
- [ ] Mac

# What's taken?:
- ## Windows:
  - Environment variables
  - Wi-fi password
  - Home : `"Downloads", "Pictures", "Desktop", ".ssh"`

# Map of DIR structure:
- Data from OS: `spider/system_info`
- Home: `spider/homer_dir`

# Limitations:
Spider will only copy folders that are less than 250 MB 

# Setup
To setup the whole project, just run `setup.sh`. Keep in mind that you will have to interact with it.  
Make sure that when installing `git bash` install it to the root directory of the USB drive.  
That will look like: `E:\Git`  
It will also compile the `run` file.  
Knock yourself out!  
## Notes:
- Get a USB drive
- Get gcc

# Usage
Run `run.exe` to start the program.

# Troubleshoot:
- ## Case 1:
  - If you have a different drive letter. It is `E` by default.  
  Look for the `DRIVE_LETTER` variable in `spider.sh` and change the letter in `lib/run.c` and recompile.