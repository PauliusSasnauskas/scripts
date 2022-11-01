# converts a folder of pdf files to a folder of png files scaled to a specific resolution (-scale-to)
# optionally generates a thumbnail
for f in */*.pdf
do
    pdftoppm -singlefile -scale-to 2000 "$f" "png/$f" -png
#    convert "png/$f.png" -resize 500x300^ -gravity North -extent 450x100 "./$folder_output/$f.small.png"
    echo $f
done
