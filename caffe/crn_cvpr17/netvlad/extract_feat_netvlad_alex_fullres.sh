THISROOTPATH=crn_cvpr17/netvlad
MODELNAME=snapshots/netvlad_alex

SAVENAME=sanfran_sv_netvlad_alex_lmdb
SAVEBIN=sanfran_sv_netvlad_alex.bin

rm -rf $THISROOTPATH/$SAVENAME

./build/tools/extract_features.bin  $THISROOTPATH/$MODELNAME.caffemodel $THISROOTPATH/get_alex_netvlad_train_sv_fullres.prototxt vlad_postL2 $THISROOTPATH/$SAVENAME 16098 lmdb GPU 0

python lmdb_to_binary_pycaffe/feat2binary_pycaffe_fast.py -i $THISROOTPATH/$SAVENAME -o $THISROOTPATH/$SAVEBIN

echo "Done."

SAVENAME=sanfran_q3_netvlad_alex_lmdb
SAVEBIN=sanfran_q3_netvlad_alex.bin

rm -rf $THISROOTPATH/$SAVENAME

./build/tools/extract_features.bin  $THISROOTPATH/$MODELNAME.caffemodel $THISROOTPATH/get_alex_netvlad_train_q3_fullres.prototxt vlad_postL2 $THISROOTPATH/$SAVENAME 803 lmdb GPU 0

python lmdb_to_binary_pycaffe/feat2binary_pycaffe_fast.py -i $THISROOTPATH/$SAVENAME -o $THISROOTPATH/$SAVEBIN

echo "Done."

