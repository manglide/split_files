split -l 200000 file_to_split_into_chunks.csv
for file in x*; do
	cp -f $file "/c/ProgramData/MySQL/MySQL Server 8.0/Uploads/large_file.csv"
	mysqlimport --ignore-lines=1 --fields-terminated-by=, --verbose -u root -pPASSWORD db_name "/c/ProgramData/MySQL/MySQL Server 8.0/Uploads/large_file.csv"
	rm -f "/c/ProgramData/MySQL/MySQL Server 8.0/Uploads/large_file.csv"
done
rm -f x*