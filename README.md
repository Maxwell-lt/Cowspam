# Cowspam
Spams a Linux system with fortune-telling cows

The command `xcowfortune` must exist for this program to work.

Recommended means of operation:

* SSH to the target computer
* Start a `screen` or `tmux` session
* Run the script, changing the targeted DISPLAY in the source if necessary
* Log out and wait to be called about the cows
* ???
* Profit!

Command line argument:
Run the script with no arguments to display a new cow every 5 seconds.
Run the script with an integer `n` as an argument to display a new cow every `n` seconds.

Note that the cows linger for a few seconds, so if you run the command with a low delay the entire screen will be filled with unhelpful cows.

# F.A.Q.

Q. Why does this exist?

A. I was bored one day, and decided to figure out bash scripting
