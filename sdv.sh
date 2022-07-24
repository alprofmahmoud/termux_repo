#/data/data/com.termux/files/home/storage/downloads/down_termux
echo "	   	  welcome prof."
echo "	   ============================"
echo "	   download single video enter 1"
echo "	   download playlist video enter 2"
echo "	   download from file 3"
read wdown
# Equal 1
if (test $wdown -eq 1)
then
	echo "download single videos..."
	echo "enter URL your video..."
	read urlv
	yt-dlp -F $urlv
	echo "\nenter select formatting..."
	read fvd
	yt-dlp -f $fvd $urlv -o /data/data/com.termux/files/home/storage/downloads/down_termux/'%(title)s.%(ext)s'
# Equal 2
elif (test $wdown -eq 2)
then
	echo "download playlist..."
	echo "enter number start playlist..."
	read sitem
	echo "enter number end playlist..."
	read eitem
	echo "enter URL playlist..."
	read urlpl
	yt-dlp -F --playlist-start $sitem --playlist-end $eitem $urlpl
	echo "\nenter select formating..."
	read fvd
	yt-dlp -f $fvd --playlist-start $sitem --playlist-end $eitem $urlpl -o /data/data/com.termux/files/home/storage/downloads/down_termux/'%(title)s.%(ext)s'
# Equal 3
elif (test $wdown -eq 3)
then
	echo "downloas from url file..."
	echo "enter url file..."
	read urlf
	yt-dlp -F -a $urlf
	echo "\nenter select formatting..."
	read fvd
	yt-dlp -f $fvd -a $urlf -o /data/data/com.termux/files/home/storage/downloads/down_termux/'%(title)s.%(ext)s'
# Other
else
	echo "out of the range..."
fi

