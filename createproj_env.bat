@echo off
md backup
md dev_src\wwwroot
md dev_src\wwwroot\themes
md dev_src\wwwroot\plugins
md src
md resources\Documents
echo /*---- User Login information-----*/> resources\Documents\logins.txt
echo /*---- Project References-----*/> resources\Documents\Referances.txt
echo /*---- Project Requirements-----*/> resources\Documents\Requirements.txt
md resources\Images
md resources\ScreenShots

set /p repo_name="Enter Repository Name: "
echo "# mats.energy" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/AnushkaKRajasingha/%repo_name%.git
git push -u origin master