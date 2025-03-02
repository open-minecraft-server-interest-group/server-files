# Accept EULA
echo "eula=$EULA" > eula.txt

# Figure out the name of the paper jar
PAPER_JAR_NAME=$(find . -name paper-*.jar)

# Run!
java -jar $PAPER_JAR_NAME