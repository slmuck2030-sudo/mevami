@echo off
echo [1/3] Scanning songs and generating JSON...

:: Run the python script
python3 generate_list.py

echo [2/3] Staging files for GitHub...

:: Add the files to git
git add data.json genres.json config.json

echo [3/3] Committing and pushing changes...

:: Commit with a timestamp
git commit -m "Update song list: %date% %time%"

:: Push to your main branch
git push origin main

echo.
echo Update complete! Your website should update in a minute.
pause