\===========================================================
Welcome to the Lab_5 Workspace
===========================================================

VM Name: [dev-onboarding-exr3]
Username: [dev-alfred]
Password: [devlogin2025]

-----------------------------------------------------------
Overview
-----------------------------------------------------------
This workspace contains two key shell scripts located in:
    Lab_5_workspace/_scripts/

1. monitor.sh
   - Logs system uptime, memory usage, and disk space.
   - Output is saved to: Lab_5_workspace/logs/system.log
   - Scheduled to run automatically every minute using cron.

2. timesheet.sh
   - Prompts the user for first name, last name, hours worked, 
     and a short work description.
   - Saves all entries to: Lab_5_workspace/logs/timesheet.log
   - Automatically copies the same log to: Lab_5_workspace/data/

-----------------------------------------------------------
How to Use (Step-by-Step for Ubuntu)
-----------------------------------------------------------

1. Open the Terminal.
   You can do this by pressing **Ctrl + Alt + T** or searching for “Terminal” in the application menu.

2. Navigate to the scripts directory:
2. Navigate to the scripts directory:
   cd ~/Lab_5_workspace/_scripts

3. To check that both scripts exist, run:
   ls
   You should see:
   monitor.sh  timesheet.sh

-----------------------------------------------------------
Running monitor.sh
-----------------------------------------------------------
The monitor.sh script logs system statistics (uptime, memory, disk).

To run manually:
./monitor.sh

To verify that it worked:
cat ../logs/system.log

This script is already scheduled to run automatically every minute via cron.
To confirm:
crontab -l

You should see a line like:
* * * * * /bin/bash /home/[USERNAME]/Lab_5_workspace/_scripts/monitor.sh

-----------------------------------------------------------
Running timesheet.sh
-----------------------------------------------------------
The timesheet.sh script prompts you for work log information.

To run it:
./timesheet.sh

You’ll be asked for:
- First Name
- Last Name
- Number of Hours Worked
- Description of Work

After entering your details, the script will:
- Append the information to logs/timesheet.log
- Copy that file into data/timesheet.log

You can confirm by running:
cat ../logs/timesheet.log
and
ls ../data/

-----------------------------------------------------------
Tips
-----------------------------------------------------------
- If you get a “Permission denied” error, make sure scripts are executable:
  chmod +x monitor.sh timesheet.sh

- Always run the scripts inside the _scripts directory to ensure paths work correctly.

- You can use htop or top to view live system performance in the terminal.

===========================================================
End of README
===========================================================
EOF

Verify file
echo " README.txt created successfully:"
ls -l README.txt

Git add, commit, and push
git add README.txt
git commit -m "Add README with VM info and usage instructions for monitor.sh and timesheet.sh" \
  -m "Includes clear Ubuntu terminal instructions for new developers."
git push
