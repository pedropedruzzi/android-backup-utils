# globals
ab="backup.ab"
tar="backup.tar"
files="files.txt"

# outputs the tar inside android backup file (assumes no cryptography)
function unwrap_ab() {
	local abfile="$1"
	tail -n +5 "$abfile" | openssl zlib -d
}

# run tar tool on the backup tar
function run_tar() {
	if [[ -e "$tar" ]]
	then
		# fast
		arg1="$1"
		shift
		tar "$arg1" --file "$tar" "$@"
	else
		# slow
		unwrap_ab "$ab" | tar "$@"
	fi
}
