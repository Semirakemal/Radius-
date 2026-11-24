#!/bin/bash

# Get destination from argument or use default
destination="${1:-$HOME/radius-projects/website-project}"

# Check if destination already exists
if [ -e "$destination" ]; then
    echo "Error: Project already exists at $destination"
    exit 1
fi

# Create website directories
mkdir -p "$destination/css"
mkdir -p "$destination/js"
mkdir -p "$destination/images"

# Create HTML file
cat > "$destination/index.html" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Welcome to My Website</h1>
    <p>This website was created using Bash scripting.</p>

    <script src="js/script.js"></script>
</body>
</html>
EOF

# Create CSS file
cat > "$destination/css/style.css" <<'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: lightblue;
    text-align: center;
}

h1 {
    color: navy;
}
EOF

# Create JavaScript file
cat > "$destination/js/script.js" <<'EOF'
console.log("Welcome to my website!");
EOF

# Create root README
cat > "$destination/README.md" <<'EOF'
# My Website Project

A simple website generated using a Bash script.
EOF

# Create CSS README
cat > "$destination/css/README.md" <<'EOF'
# CSS Directory

Contains stylesheets used to design the website.
EOF

# Create JavaScript README
cat > "$destination/js/README.md" <<'EOF'
# JavaScript Directory

Contains scripts used to add interactivity to the website.
EOF

# Create Images README
cat > "$destination/images/README.md" <<'EOF'
# Images Directory

Stores website images such as PNG, JPG, SVG, and WebP files.
EOF

# Display success message
echo "Website project created successfully!"
echo "Project location: $destination"