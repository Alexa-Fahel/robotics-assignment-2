echo "step 2"

#create folders
mkdir -p workspace/{docs,logs,data,scripts}
cd workspace

#create setup files
touch docs/docs_setup.txt
touch logs/logs_setup.txt
touch data/data_setup.txt
touch scripts/scripts_setup.txt


echo "step 3"

#create text files
cd docs
echo "This is the first set of notes for the docs folder" > notes1.txt
echo "This is the second set of notes for the docs folder" > notes2.txt
echo "This is the third set of notes for the docs folder" > notes3.txt
echo "Welcome to my robotics assignment" > welcome.txt

#create summary.txt and search_results.txt
cat notes1.txt notes2.txt notes3.txt > summary.txt
cd ..
grep "first" docs/summary.txt > logs/search_results.txt

#move and copy files
mv docs/welcome.txt .
cp docs/summary.txt logs/


echo "step 4"
chmod 764 scripts/
sudo groupadd class
sudo chown alexa:class data/
