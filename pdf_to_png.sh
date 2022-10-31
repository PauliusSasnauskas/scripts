# converts a folder of pdf files to a folder of png files scaled to a specific resolution (-scale-to)
for f in */*.pdf
do
    pdftoppm -singlefile -scale-to 2000 "$f" "png/$f" -png
    echo $f
done