FILERUN=$PWD/run
COMPILE_RUN="f90 $F90FLAGS -o run -s -w super_beta_muon.f $LINK_FNL"

if [ -f "$FILERUN" ]
then
    runexit=$true
else
    runexit=$false
fi

if [ !$runexit ]; then
    eval $COMPILE_RUN
fi

./run
echo "Done!"