echo "ROP requires Python 2.7. Please ensure that Python 2.7 is available on your "
echo "system. This script will install all other prerequisite software (no "
echo "administrator permissions required)."
echo
echo "In addition, please use getDB.py to download the database(s) you wish to use."
echo "For more information on downloading databases, run python getDB.py --help."
echo
echo "For more details see: https://sergheimangul.wordpress.com/rop/"
echo "ROP Tutorial: https://github.com/smangul1/rop/wiki"
echo "--------------------------------------------------------------------------------"

echo "Commands are saved in rop.commands.txt"
./rop.commands.sh


cd tools
rm -fr Miniconda-Install
git clone https://github.com/deto/Miniconda-Install.git
cd Miniconda-Install
bash Linux_Install.sh
cd ..


cd tools
rm -fr imrep
git clone https://github.com/mandricigor/imrep.git
cd imrep
./install.sh
cd ..

hg clone https://bitbucket.org/biobakery/metaphlan2
cd  metaphlan2
ln -s ../../db_human/databases/
cd ../../



./tools/Miniconda-Install/YourApplicationFolder/bin/pip install pysam --user
./tools/Miniconda-Install/YourApplicationFolder/bin/pip install biopython --user
./tools/Miniconda-Install/YourApplicationFolder/bin/pip install intervaltree --user
./tools/Miniconda-Install/YourApplicationFolder/bin/pip install jellyfish --user
./tools/Miniconda-Install/YourApplicationFolder/bin/pip install numpy --user
./tools/Miniconda-Install/YourApplicationFolder/bin/pip install networkx --user
cd tools
tar -xf suffix_tree-2.1.tar.gz
cd suffix_tree-2.1
python setup.py install --user
cd ..
rm -rf suffix_tree-2.1

echo "Done!"


