DFMJSON
=======

DFMJSON is exactly what it sounds like: a library to convert between Delphi's .DFM (or .FMX) format and JSON.  It can be used to parse a DFM file into an Abstract Syntax Tree in JSON, which can then be edited and the results turned back to DFM format.

Unlike the original DFMJSON from Mason Wheeler, this version of DFMJSON has NO dependency on [DWS](https://code.google.com/p/dwscript/) and instead uses the Delphi RTL for its JSON support. There are no additional features other than this removal of the DWS dependency.

In fact this fork has less features than the original as the scriptable bulk editor functionality has been removed. This is because without DWS there is no scripting engine available to power it. If you want to manipulate DFM files using scripting you are better off using Mason's original version. If you're happy with using compiled Delphi code to do your DFM transformations and don't want to bother with DWS, use this version.
