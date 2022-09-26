GIT_PLUGINS=~/.vim/pack/git-plugins/start
for DIR in `ls $GIT_PLUGINS`; do
	echo updating $DIR...
	cd $GIT_PLUGINS/$DIR
	git pull -f
	cd ..
done
