# Overview

This template provides a container environment to quickly start using latex as a resume template. The beauty of latex is that it takes care of all formatting for the developer. It removes the need for painful tedious edits to word documents for alignment or text fitting.

![](docs/resume.png)

This template provides a small makefile to assist the user with latex commands which are easily forgotten if not used regularly. There is a small scripting system in place to compile the document which warns on compile failure.

## Requirements

* linux
  * docker
* windows
  * windows subsystem for linux
  * docker

## Building

### Overview
This system was built using VS Code to ssh into the container. When opening the workspace in VS Code via `File > Open workspace from file > resume-latex-template.code-workspace` it will inform the user that the project can be reopened in a container. Select this and the environment will automatically be created.

In a linux environment this only requires docker. In a windows environment this requires docker and windows subsystem for linux.

This system also automatically installs a couple of VS Code extensions that are helpful for editing tex and spellchecking.

### Commands

You may review the small Makefile for specific commands.

`make` - compile the latex documents and output the PDFs.

`make clean` - remove the build artifacts.

## Structure

### `imports/**.txt`
The imports folder contains personal information the user may not want to expose if they plan on publicly displaying the git repository. This information can be removed from the repo and kept locally.

### `resume.tex`
Edit this file to build out your resume.

### `cover_letter.tex`
Edit near the end of this file to build out a cover letter.

# Attributions

Thanks to Trey Hunner, who created the original class file and resume file, which I've modified to suite my style. Thanks to Brian Moses (http://www.ms.uky.edu/~math/Resources/Templates/LaTeX/) and Vel (vel@latextemplates.com) for creating the cover letter document, which I've slightly modified.
