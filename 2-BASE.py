import sys
FileName = sys.argv[1] # input variable 1 = string with which to prefix file names of .count files generated below

def BASE(FileName):
  infile = open("./" + str(FileName) + ".seq", "r") # opening .seq infile for reading (being read as part of for loop below)
  outfile = open("./" + str(FileName) + ".count", "w") # opening .count outfile for writing
  
  for seq in infile:
    print(str(seq.count("A")) + ",",
          str(seq.count("G")) + ",",
          str(seq.count("C")) + ",",
          str(seq.count("T")),
          file = outfile)
  
  infile.close() # closing infile
  outfile.close() # closing outfile

BASE(FileName)
