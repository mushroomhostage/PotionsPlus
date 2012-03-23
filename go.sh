#!/bin/sh -x
CLASSPATH=../craftbukkit-1.1-R8.jar javac *.java -Xlint:unchecked -Xlint:deprecation
rm -rf me
mkdir -p me/exphc/PotionsPlus
mv *.class me/exphc/PotionsPlus
jar cf PotionsPlus.jar me/ *.yml *.java
