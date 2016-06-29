#This is a batch script that runs the needed instances of Rubric
# It requires two arguments.
# Argument 1 is the tag element's content for the recommendation components desired (cw:spiral/cw:tag).
# Argument 2 is the cw:dialect/cw:code of the records you wish to assess
#./Rubric.sh UMM-C DIF
./Rubric.sh CSDGM
./Rubric.sh BDP
./Rubric.sh EML
./Rubric.sh Mercury
./Rubric.sh Dryad
./Rubric.sh Onedcx
