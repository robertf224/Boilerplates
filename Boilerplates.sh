
export BOILERPATH=$HOME/.boilerplates
function boilerplate {
	if [ "$#" -ne 2 ]; then
		echo "Usage: boilerplate <type> <name>"
		return
	fi

	cp -r $BOILERPATH/$1 ./$2 2>/dev/null || (echo "No boilerplate named $1" && return)
	for f in $(find ./$2 -type f);
	do
		mv $f $f.old
		sed s/{{name}}/$2/ $f.old > $f
		rm -f $f.old
	done
}
