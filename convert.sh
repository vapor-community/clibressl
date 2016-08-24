ROOT="$PWD"
LIBRE="$ROOT/libressl"
CTLS="$ROOT/CTLS"

# Clean
rm -rf $CTLS

# Setup
mkdir $CTLS
mkdir $CTLS/include

# Copy public headers
cp -R $LIBRE/include/openssl/*.h $CTLS/include

# Get list of public headers
cd $CTLS/include
public_headers=$(ls)

# Replace `<openssl>` with `""`
for file in $public_headers; do
    for header in $public_headers; do
        echo "$file+$header"
        sed -i -e "s/<openssl\/$header>/\"$header\"/" $file
    done
done

# Remove any errors
rm -rf *-e

# Start copying non-public source and headers
cd $ROOT

# Copy Misc Headers
cp -R $LIBRE/include/*.h $CTLS/

# Copy SSL
cp -R $LIBRE/ssl/*.c $CTLS/
cp -R $LIBRE/ssl/*.h $CTLS/

# Copy Crypto
cd $LIBRE/crypto/;

cp -R *.c $CTLS/
cp -R *.h $CTLS/

for file in */; do 
    echo "Crypto $file"
    cp -R $file/*.c $CTLS/
    cp -R $file*.h $CTLS/
done

# for file in $(ls compat); do
#     echo "Removing compat $file"
#     rm $CTLS/$file
# done

cd $CTLS

for source in $(ls *.c); do
    for header in $public_headers; do
        echo "$source+$header"
        sed -i -e "s/<openssl\/$header>/\"include\/$header\"/" $source
    done
done

for source in $(ls *.h); do
    for header in $public_headers; do
        echo "$source+$header"
        sed -i -e "s/<openssl\/$header>/\"include\/$header\"/" $source
    done
done

rm -rf *-e