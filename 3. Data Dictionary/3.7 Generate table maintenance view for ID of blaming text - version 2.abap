************************************************************************
* Task: Generate table maintenance view for ID of blaming text - version 2
************************************************************************
step 1. 
Create maintenance view for related tables:
Blaming text ID
Blaming text

If foreign key in the previous step was properly set up, the 2 tables can be easily add to the view

Visible fields:
Blaming text ID
Blaming text


step 2. 
Generate table maintenance view for blaming text setup. (for the previously created view)
use authorization group OBSOLETE (S/4 HANA) or &NC& (ECC)
Use function group defined earlier.
One step maintenance, without recording routine.


step 3.
Using this maintenance view, create entries via TA sm30.
E.g.
Blame Text ID		Blame Text
L02              	Key of the forklift is lost
L03					AGV driver is on vacation
P01					Where is wrench?
P02					It is not my fault!

Translation of all texts to German is required, the text might be the same.

After entering texts and translations, check the content of the tables (e.g. via TA se16n)