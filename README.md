# org.shelden.merged.html #

Preview
-------


Installation
------------

1. Using Dita:
    ./bin/dita -install plug-in-zip

    where:
		* dita-ot-dir is the DITA-OT installation directory.

2. Using Ant:

	* The unzip the plug-in file to plugins subdirectory.

    * ./bin/ant -f integrator.xml


Running the transformation
--------------------------

1. Using Dita:
    ./bin/dita -i ./docsrc/samples/hierarchy.ditamap -f merged-html -o out

License
-------

The org.shelden.merged.html is licensed for use under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).