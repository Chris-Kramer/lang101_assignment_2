# Assignment 2 - String processing with Python
**Christoffer Kramer**  
**15-02-2021**  

Using a text corpus found on the cds-language GitHub repo or a corpus of your own found on a site such as Kaggle, write a Python script that calculates collocates for a specific keyword.

- The script should take a directory of text files, a keyword, and a window size (number of words) as input parameters, and an output file called out/{filename}.csv
- These parameters can be defined in the script itself
- Find out how often each word collocates with the target across the corpus
- Use this to calculate mutual information between the target word and all collocates across the corpus
- Save result as a single file consisting of four columns: collocate, raw_frequency, MI

## Method
This script uses simple string processing techniques to find collocates and calculating their MI value. The MI (mutual information) value is a statistical evaluation of how often a collocate and the target word appear individually and how often both words appear together in a corpus.  

## How to run
This should work on both Linux, Mac, and Windows. However, if you are running on a
local windows machine, you should run it from a bash emulator such as git bash.  

**Step 1: Clone repo**
- open terminal
- Navigate to destination for repo
- type the following command:  
```console
git clone https://github.com/Chris-Kramer/lang101_assignment_2.git
```  
**Step 2 navigate to assignment folder**
- Navigate to _lang101_assignment_2_:  
```console
cd lang101_assignment_2
```   
**Step 3 run bash script**
- Run the bash script _run_assignment-2-christoffer.sh_:  
```console
bash run_assignment-2-christoffer.sh
```
The bash script will create a virtual environment, upgrade pip and run the python script.  
The script will after a couple of minutes start printning out words, their frequency and the MI value to the terminal. 
**_since the script might take a while to finish, you can stop it manually by pressing ctrl c, the output-file will still be available._**  

### Running on windows without a bash emulator  
If you're running on a local Windows machine, and don't have a bash emulator, you must set up a virtual environment, activate it, and then run the python script manually from the src folder. All packages in the script are part of python’s standard library, so no need to install dependencies.  

## Output
The output is a csv-file with collocates and their MI value. It is located in the folder "output".  

## Parameters
The script takes the following parameters:  
- `--keyword` The target word you want to find collocates with.  
    - Default: "bald"  
- `--window_size` The size of the window for the KWIC lines, the size indicates how many words on each side of the target word the window should contain.  
    - Default: 5  
- `--corpus` The name of a corpus. The corpus must be a folder with txt files and it must be located witihn the "data" folder. Subfolders and non-txt files will not be included in the MI calculations.  
    - Default: "100_english_novels"  
- `--output` Filename for the output csv-file, which will be located in the folder "output".  
    - Default: "output.csv"  

### Example:  
_With bash script_  
```console
bash run_assignment-2-christoffer.sh --keyword single --window_size 7 --output single_collocates.csv
```  
_Without bash scrip_  
```console
python assignment-2-christoffer.sh --keyword single --window_size 7 --output single_collocates.csv
```  
