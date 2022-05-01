import sys
FileName = sys.argv[1] # input variable 1 = string with which to prefix file names of .seq files generated below
Nb = int(sys.argv[2])

def DNAgen(FileName, Nb):
  from random import choices
  x = choices(["A", "G", "C", "T"], k = Nb)
  y = "".join(map(str, x))

  outfile = open("./" + str(FileName) + ".seq", "w")
  outfile.write(y)
  outfile.close()

DNAgen(FileName, Nb)
