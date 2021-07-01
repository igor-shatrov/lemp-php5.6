#! /bin/bash
cd ../projects

for project in *
do 
	cd $project
	git pull
	git checkout scripts
	for script in *.sh
	do
		sh $script
	done
	git checkout main
	cd ..
done

cd ../lemp-php5.6
make restart