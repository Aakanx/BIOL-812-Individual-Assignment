import sys
FileName = sys.argv[1] # input variable 1 = string with which to prefix file names of .seq files generated below
Nb = int(sys.argv[2])

def DNAgen(FileName, Nb):
  from random import choices
  x = choices(["A", "G", "C", "T"], k = Nb) # generate list of length Nb composed of As, Gs, Cs, and Ts
  y = "".join(map(str, x)) # join list x into a string y

  outfile = open("./" + str(FileName) + ".seq", "w") # opening .seq outfile for writing
  outfile.write(y) # writing y to outfile
  outfile.close() # closing outfile

DNAgen(FileName, Nb)
