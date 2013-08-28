# Boilerplates

A simple bash script to create projects from templates

## Installation

```bash
git clone git://github.com/robertf224/Boilerplates.git
cat Boilerplates/Boilerplates.sh >> ~/.bash_profile
rm -rf Boilerplates
mkdir ~/.boilerplates
```

## Usage

Create subdirectories in ~/.boilerplates for project templates.  Anywhere in the template files where the project/program name needs to be specified, put {{name}} instead, which will be replaced by the name you specify when creating a project from the template.  Then to actually create a project from a template:

```bash
boilerplate <type> <name>
```


