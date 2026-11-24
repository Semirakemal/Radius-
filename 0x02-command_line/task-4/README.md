 # Task 4

The "create_website.sh" script automatically generates a website project containing HTML, CSS, JavaScript, images, and README files.


# Make the script executable:

chmod +x task-4/create_website.sh

# Run with the default location:

./task-4/create_website.sh

# Default Location

"~/radius-projects/website-project/"

# Custom Location

./task-4/create_website.sh "$HOME/Desktop/my-website"

# Existing Directory Protection

The script checks whether the destination already exists. If it does, it displays an error and stops without overwriting existing files.


## I learned Bash scripting, variables, arguments, conditional statements, file creation, and permissions using "chmod".