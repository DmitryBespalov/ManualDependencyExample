FRMK=$1

mkdir iphone{os,simulator}/include/${FRMK%.*}
cp $FRMK/Headers/* iphoneos/include/${FRMK%.*}
cp $FRMK/Modules/* iphoneos/include/${FRMK%.*}

cp $FRMK/Headers/* iphonesimulator/include/${FRMK%.*}
cp $FRMK/Modules/* iphonesimulator/include/${FRMK%.*}

file $FRMK/${FRMK%.*}
lipo -output iphoneos/lib${FRMK%.*}.a -extract arm64 -extract armv7 $FRMK/${FRMK%.*}
lipo -output iphonesimulator/lib${FRMK%.*}.a -extract i386 -extract x86_64 $FRMK/${FRMK%.*}

