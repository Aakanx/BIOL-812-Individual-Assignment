import sys
FileName = sys.argv[1]
Nb = int(sys.argv[2])
# print(FileName, Nb)

from random import choices
x = choices(["A", "G", "C", "T"], k = Nb)
y = "".join(map(str, x))

outfile = open("./" + str(FileName) + ".seq", "w")
outfile.write(y)
outfile.close()


# def DNAgen(FileName, Nb):
#   from random import choices
#   x = choices(["A", "G", "C", "T"], k = Nb)
#   y = "".join(map(str, x))
# 
#   outfile = open("./" + str(FileName) + ".seq", "w")
#   outfile.write(y)
#   outfile.close()
# DNAgen("test", 10)
