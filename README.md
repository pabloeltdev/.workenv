# My work environment (dotfiles)
## How to setup using *stow*
The enviroment is splited into *packages*,
each directory in the root of this repository
is a *package*, setup a package using the command:  
`$ stow package`  
Example: `$ stow neovim`  
It will create symlinks in the to the packages in 
the home directory.  
In order to setup all packages inside this repository 
you need to use the command as follow:  
`$ stow */`  
If you want to delete the symlinks, use -d option:  
`$ stow -d */`   
use the --verbose option to see whats is going on,
and -n to simulate the operation without change
anything.  

