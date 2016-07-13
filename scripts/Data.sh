cd ../
ConceptMining=$(pwd)
cd ../CrosswalksWorkflow
CrosswalkWorkflow=$(pwd)
cd ../Crosswalks 
CrosswalkHome=$(pwd) 

    java net.sf.saxon.Transform \
    -s:$CrosswalkWorkflow/collections/dummy.xml \
    -xsl:$CrosswalkHome/dialectRubrics/rubric$2.xsl \
    -o:$ConceptMining/data/DataONE/$3_$2_data.csv \
    fileNamePattern=*.xml \
    recordSetPath=$CrosswalkWorkflow/collections/$1/$3/$2/xml \
    dialectName=$2 \
    delimiter=',' \
   

	