# converts a folder of CR2 files to a folder of png files scaled to a specific resolution (-resize)
mkdir -p png
for f in *.CR2
do
    dcraw -c -w "./$f" > test.pnm
    convert test.pnm -resize 1920x1280^ "./png/$f.png"
    rm test.pnm
    echo $f
done
