#This is a batch script that runs the needed instances of Extract
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./Extract.sh UMM-C DIF
./Extract.sh CSDGM
./Extract.sh BDP
./Extract.sh EML
./Extract.sh Mercury
./Extract.sh Dryad
./Extract.sh Onedcx
