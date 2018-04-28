# init-webproject
script for creating a template and loading libraries to start a new simple web project with php, less and javascript

## libraries
the following libraries will be installed via npm
- bootstrap
- jquery

## script
an initial javascript file names main.js will be places to assets/scripts

## styles
the less located in assets/styles files will be created the following way

```
+-- styles
|   +-- main.less
|   +-- less
|   |   +-- sites.less
|   |   +-- components.less
|   |   +-- variables.less
|   |   +-- sites
|   |   |   +-- index.less
|   |   +-- components
|   |   |   +-- header.less
|   |   |   +-- footer.less
|   |   +-- variables
|   |   |   +-- colors.less
|   |   |   +-- fonts.less
|   |   |   +-- sizes.less
```
you need to set a less watcher watching the main.less and creating a main.css file in assets/styles

## index file
the index.php file will be created an will include the bootstrap and jquery library, the main.js and a main.css created from the less watcher

## .gitignore
the gitignore-file will ignore the following files
- node_modules
- .idea (for jetbrains users)
- itself
