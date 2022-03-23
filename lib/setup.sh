# Getting Git bash
echo "Downloading git bash"
curl -L https://github.com/git-for-windows/git/releases/download/v2.35.1.windows.2/PortableGit-2.35.1.2-64-bit.7z.exe -o git-bash-setup.exe
./git-bash-setup.exe

# Compile run.c
gcc run.c ../run.exe