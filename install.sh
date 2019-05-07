if [[ -z $1 ]]; then
	THEME="Flat-Remix-GTK-Green-Darkest"
else
	THEME="$1"
fi
cd /tmp && rm -rf flat-remix-gtk &&
git clone https://github.com/eliseuegewarth/flat-remix-gtk &&
mkdir -p ~/.themes && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/ &&
gsettings set org.gnome.desktop.interface gtk-theme $THEME