shPath="$0"
folderPath="$(dirname $shPath)"
readmePath="$folderPath/README.md-Generated"

echo "Type the title of your README file and press [ENTER]:"
read title

echo "Type the name of your project repository and press [ENTER]:"
read repo

echo "Type the IP of your Sonar service and press [ENTER]:"
read ip

sed -i "s/{title}/$title/g" $readmePath
sed -i "s/{project-name}/$repo/g" $readmePath
sed -i "s/{sonar-ip}/$ip/g" $readmePath

echo "Your README file was created successfully! :D"

echo "Press [ENTER] to open it on Visual Code..."
read -p "$*"

code $readmePath