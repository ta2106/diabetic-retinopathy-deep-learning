cd working
cd ../train
for f in *.jpeg; do
    echo "$f" 
done | parallel -j 4 --colsep ' ' --eta convert {1} -fuzz 15% -trim -equalize  -set filename:base "%[base]" "../resize/%[filename:base].jpeg"

cd ..


