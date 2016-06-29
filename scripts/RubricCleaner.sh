#
# This sed script removes xPath elements that are ISO types.
# They are identified as /nsp:PACKAGE_Type/ and replaced by /
#
sed -i -e 's|/csdgm:|/|g' /Users/scgordon/Crosswalks/dialectRubrics/rubricCSDGM.xsl 
sed -i -e 's|/bdp:|/|g' /Users/scgordon/Crosswalks/dialectRubrics/rubricBDP.xsl 
sed -i -e 's|/mercury:|/|g' /Users/scgordon/Crosswalks/dialectRubrics/rubricMercury.xsl
sed -i -e 's|/eml:|/|g' /Users/scgordon/Crosswalks/dialectRubrics/rubricEML.xsl &&
sed -i -e 's|"/eml/|"/eml:eml/|g' /Users/scgordon/Crosswalks/dialectRubrics/rubricEML.xsl
