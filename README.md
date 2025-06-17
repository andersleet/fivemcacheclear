## This is a batch file to simplify clearing the FiveM custom GTA server cache folder.

By default, FiveM installs to ```%localappdata%\FiveM\FiveM.app\```.
As far as I know, there is no way to adjust this when FiveM is installed. However, it is safe to change the ```%backup%``` folder location. By default it is in the same folder that ```%localappdata%\FiveM\FiveM.app\data``` exists in.

### What it does:
- Upon launch of the batch file, it prompts the user to proceed to delete the cache folder.
- If the cache folder does not exist, the batch file will exit leaving all files untouched.
- If the cache folder does exist, it will prompt the user to either delete the cache folder entirely, create a backup of the cache folder, or exit the batch file entirely. If the last option is chosen, no files will be deleted.
- Upon completion, the user is notified the chosen operations were completed.

### Things to work on:
- Add the ability for the user to choose to create a new backup if a previous backup folder already exists.
