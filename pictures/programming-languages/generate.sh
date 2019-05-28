#/bin/bash

for i in svg/*.svg; do 
		NAME=${i/svg\//};
		NAME=${NAME/.svg/}; 
		echo "Parsing $NAME..."; 
		inkscape -D -z --file=$i --export-pdf=$NAME.pdf --export-latex;
done
