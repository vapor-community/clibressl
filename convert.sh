echo "Don't run this."
exit

ROOT="$PWD"
LIBRE="$ROOT/libressl"
CLibreSSL="$ROOT/CLibreSSL"

# Clean
rm -rf $CLibreSSL

# Setup
mkdir $CLibreSSL
mkdir $CLibreSSL/include

# Copy public headers
cp -R $LIBRE/include/openssl/*.h $CLibreSSL/include

# Get list of public headers
cd $CLibreSSL/include
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
cp -R $LIBRE/include/*.h $CLibreSSL/

# Copy SSL
cp -R $LIBRE/ssl/*.c $CLibreSSL/
cp -R $LIBRE/ssl/*.h $CLibreSSL/

# Copy TLS
cp -R $LIBRE/tls/*.c $CLibreSSL/
cp -R $LIBRE/tls/*.h $CLibreSSL/

# Copy Crypto
cd $LIBRE/crypto/;

cp -R *.c $CLibreSSL/
cp -R *.h $CLibreSSL/

for file in */; do 
    echo "Crypto $file"
    cp -R $file/*.c $CLibreSSL/
    cp -R $file*.h $CLibreSSL/
done

# for file in $(ls compat); do
#     echo "Removing compat $file"
#     rm $CLibreSSL/$file
# done

cd $CLibreSSL

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