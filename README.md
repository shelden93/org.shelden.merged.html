# org.shelden.merged.html #

Preview
-------


Installation
------------

1. Using Dita:

		./bin/dita -install plug-in-zip

 where:

 * `plug-in-zip` is the filename or URL of the plug-in's distribution ZIP file (optional).

2. Using Ant:

 1) The unzip the plug-in file to plugins subdirectory.

 2) `./bin/ant -f integrator.xml`


Running the transformation
--------------------------

1. Using Dita:

		./bin/dita -i ./docsrc/samples/hierarchy.ditamap -f merged-html -o out

License
-------

The org.shelden.merged.html is licensed for use under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).
