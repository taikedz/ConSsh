THISDIR="$(dirname "$0")"

mkdir -p ~/.local/bin ~/.local/var/conssh

cp bin/conssh ~/.local/bin/conssh

if ! which conssh 2>&1 >/dev/null; then
    echo "Add ~/.local/bin to your PATH"
fi
