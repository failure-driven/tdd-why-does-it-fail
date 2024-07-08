# just file for managing this repo
#   - https://github.com/casey/just
#   - https://just.systems/man/en/
#   - `brew install just` on a Mac

set shell := ["zsh", "-uc"]

# user and repo
user        := `whoami`
current_dir := `basename $( pwd )`

# Colors
RED     := "\\u001b[31m"
GREEN   := "\\u001b[32m"
YELLOW  := "\\u001b[33m"
BLUE    := "\\u001b[34m"
MAGENTA := "\\u001b[35m"
BOLD    := "\\u001b[1m"
RESET   := "\\u001b[0m"

_default:
    @echo "\nHi {{GREEN}}{{user}}!{{RESET}} Welcome to {{RED}}{{current_dir}}{{RESET}}\n"

    @just --list --unsorted

# code examples
demo:
    pushd eg_01_just-do-it && \
        just demo && popd

# present revealjs slideshow
present:
    pushd presentation && \
        npm install && \
        npm run dev && \
        popd

# test the code
rspec:
    @echo "{{GREEN}}testing steps go here ...{{RESET}}"

# lint the code
rubocop:
    bundle exec rubocop

# auto fix with rubocop autocorrect-all (-A)
rubocop-fix:
    bundle exec rubocop --autocorrect-all

# test, lint and demo
build: rspec rubocop demo
