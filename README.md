# getignore
Simple bash script to get the gitignore for a specific language.


# Usage

1. Clone the repository
```
$ git clone https://github.com/Defl8/getignore.git
```

2. Open the directory
```
$ cd getignore/
```

3. Make the script executable
```
$ sudo chmod +x getignore
```

4. The script leverages the the `.gi-langs` file to fuzzy find the supported
   languages. You may have to update the path on line 6 of the script so that
   it can be found.
```bash
lang_selection=$(cat YOUR/PATH/HERE/.gi-langs | fzf)
```


5. Add the script to your bin folder. There are other ways to make this
   globally executable on your system, this is my preferred way.
```
$ sudo cp getignore /usr/local/bin/
```

6. After the you select language the gitignore will be downloaded to the
   directory you are currently in.
