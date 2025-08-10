### references
- [normal compile](../_200_LaTeX_wikibook/_203_compile.md)
- using tmpfs /run/user
    - [filesystems(5) — Linux manual page](https://man7.org/linux/man-pages/man5/filesystems.5.html)

- content:
    - [export PATH and initialize temp folder for TeX build](#a-bash-script-initialize-path-and-setup-temporary-build-folder-for-texlive)
    - [Add bash script to VScode](./_001_install_TeXLive_environment.md#vscode-setup-bash-terminal)
    - Compile LaTeX pdf
        - [normal compile](../_200_LaTeX_wikibook/_203_compile.md)
        - [complie to designed temporary folder](#compile-to-temporary-folder)
### A bash script initialize PATH and setup temporary build folder for TeXLive
```bash
#!/bin/bash
# Giang Trinh, GitHub:https://github.com/TrinhHuuGiang


# Check default PATH
echo "----------"
echo "source ~/.bashrc as Bash default"
source $HOME/.bashrc
echo -e "----------\n"

echo "[PART before] $PATH"
echo -e "----------\n"


# register new PATH to texlive
echo "exporting Texlive tools to PATH"
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
echo "[PART after] $PATH"
echo -e "----------\n"

# Check tmpfs 

echo "checking user tmpfs ..."
tex_fslink="/run/user/$(id -u)"
tex_fssize="df -h $tex_fslink"

$tex_fssize
echo -e "----------\n"


# Create user tmpfs folder for tex
echo "creating temporary folder for tex ..."

tex_tmpf="$tex_fslink/tex_tmpfolder"
mkdir -p $tex_tmpf

echo -e "\ntmp files are existing:"
ls $tex_tmpf
echo -e "----------\n"


#ok
echo -e "Texlive setup OK\n"

echo -e "\nTex tools"
tex_bin="/usr/local/texlive/2025/bin/x86_64-linux"
echo "[texbin=$tex_bin]"
echo "search: ls \$texbin"

echo -e "\nTex temporary folder"
echo "[tex_tmpf=$tex_tmpf]"
echo "search: ls \$tex_tmpf"

echo -e "\nTex check user tmpfs size"
echo "[tex_fssize=$tex_fssize]"
echo "tmpfs size: \$tex_fssize"


# help
tex_help=\
"echo -e \nTex tools: ls \$texbin\n\
Tex temporary folder: ls \$tex_tmpf\n\
Tex check user tmpfs size: \$tex_fssize\n\
\n\
Build: latexmk --pdf -output-directory=\"\$tex_tmpf\" -jobname=\"OUTPUT_file_PDF\" main.tex\
\n"

echo -e "\n\nHELP: \$tex_help"

```

### Compile to temporary folder
The prerequisite is to successfully run the above script  
Then in project TeXLive run command, `main_file.tex` replace with main tex
```bash
latexmk --pdf -output-directory="$tex_tmpf" -jobname="OUTPUT_file_PDF"  main_file.tex
```