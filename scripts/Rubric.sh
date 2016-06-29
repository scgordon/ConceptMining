#!/bin/bash
#This script is uses the xsl created by writeAllRubricTransforms.sh and rubricTransform to create json scorecards for all of the records in the assessed collection.
#This script takes 4 arguments.
#Argument 1 is the collection in the organization being assessed.
#Argument 2 is the recommendation being used to assess the organizations collections.
#Argument 3 is the dialect of the records in the organizations collections being assessed.
#Argument 4 is the organization name.
#It is hoped that batch scripts like jsonCreator.sh that runs the needed instances of this script can be heavily reduced by creating recursion based on organization name and dialect code in the recordSetPath
cd ../../Crosswalks 
CrosswalkHome=$(pwd) 
dialectCode=$1

    java net.sf.saxon.Transform \
    -s:$CrosswalkHome/DialectXML/dialect$dialectCode.xml \
    -xsl:$CrosswalkHome/DialectXML/xsl/WriteDialectExtractorXSL.xsl \
    -o:$CrosswalkHome/dialectRubrics/rubric$dialectCode.xsl \
showCollectionName='1' \
showDialect='1' \
showFilename='1' \
    

	