cd ../
ConceptMining=$(pwd)
cd ../Crosswalks 
CrosswalkHome=$(pwd) 

    java net.sf.saxon.Transform \
    -s:$CrosswalkHome/AllCrosswalks.xml \
    -xsl:$CrosswalkHome/Tables/xsl/excelRecExtractor.xsl \
    -o:$ConceptMining/Tables/recommendationsTable/RecTag.csv \
