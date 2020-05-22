import os

list = list(range(5455500, 5456154))
list2 = ['fastq-dump --split-files SRR' + str(s) for s in list]

for entry in list2:
	os.system(entry)
