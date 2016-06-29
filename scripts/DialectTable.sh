cd ../
ConceptMining=$(pwd)
cd ../Crosswalks 
CrosswalkHome=$(pwd) 

    java net.sf.saxon.Transform \
    -s:$CrosswalkHome/AllCrosswalks.xml \
    -xsl:$CrosswalkHome/Tables/xsl/excelDialectExtractor.xsl \
    -o:$ConceptMining/Tables/dialectTables/$1.csv \
    DialectToExtract=$1

