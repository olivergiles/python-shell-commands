#make python module directory
function mkpymod() {
    mkdir $1 && \
    cd $1 && \
    touch __init__.py && \
    cd ..
}
#make python directory
function mkpydir() {
    mkdir $1 && \
    cd $1 && \
    touch .gitignore && \
    echo "**/__pycache__/" >> .gitignore && \
    touch requirements.txt && \
    touch README.md && \
    mkpymod main && \
    cd main && \
    touch main.py && \
    cd .. && \
    git init && \
    cd ..
}