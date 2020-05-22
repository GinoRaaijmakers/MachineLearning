# MachineLearning
Previous research indicated that screening of fragmentation patterns of cfDNA is a good method to distinguish premature cancer patients from healthy individuals. To be able to detect these differences Cristiano et al. developed a machine learning approach called the DNA evaluation of fragments for early interception (DELFI). DELFI can detect abnormalities of cfDNA fragmentation profiles at the genome-wide level with a specificity up to 95%. The DELFI algorithms will be reproduced with the data set used in the Cristiano et al. paper, to test the algorithm. After achieving this, DELFI could be used for other data sets (Snyder and Hao) of patients that still need a diagnosis.

# Snyder
This dataset is openly available in the NCBI short read archive (SRA) with project number PRJNA291063. The bloodplasma of multiple people with the same type of cancer, or healthy patients, was pooled before it was sequenced. This made sure it does not have to abide by privacy limitations.
At the top of this script the name, working directory and SRR number can be changed to personal specifications. This script downloads the data and processes it. At different stages during the processes quality assesments are provided to check all steps. After the processing is finished, a new directory is created where all the quality assesments and the bam file will be located.

# Hao
This dataset is also openly available in the NCBI SRA with project number PRJNA291063. This dataset contains the pooled DNA of cancer patients only, split into multiple small files.
To download the many files in this dataset, a small program called preHaoDownloader.py should be in the same directory as the main script. The main script uses the python script to iterate through all SRR numbers associated with the Hao dataset, after which they are concatenated and can be processed further.

# Cristiano
The Cristiano dataset does not have to be processed before the DELFI algorithm can be run, as this is the dataset which is specifically made for the script. These files are .bam files, whereas the Snyder and Hao datasets are fastq files.

# Delfi original
The original scripts used in the Cristiano paper are placed here. They are also found at https://github.com/cancer-genomics/delfi_scripts. 

# Delfi edited Cristiano
These delfi scripts are edited for the Cristiano dataset. While running the original scripts with the original dataset some problems occured, which are fixed in these scripts.
