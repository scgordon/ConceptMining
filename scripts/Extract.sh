cd ../../Crosswalks
CrosswalkHome=$(pwd)

java net.sf.saxon.Transform \
-s:$CrosswalkHome/AllCrosswalks.xml \
-xsl:$CrosswalkHome/DialectExtractor.xsl \
-o:$CrosswalkHome/DialectXML/dialect$1.xml \
DialectToExtract=$1 \


#>$CrosswalkHome/DialectXML/dialect$1.xml