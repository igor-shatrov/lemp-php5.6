#! /bin/bash
cd ../projects

for project in *
do 
	cd $project
	git pull
	cd scripts
	for script in *.sh
	do
		sh $script
	done
	cd ..
done

cd ../lemp-php5.6
make restart
