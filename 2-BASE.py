import sys
FileName = sys.argv[1]
# print(FileName)

infile = open("./" + str(FileName) + ".seq", "r")
outfile = open("./" + str(FileName) + ".count", "w")

for seq in infile:
  # print(str(seq.count("A")) + ",",
  #       str(seq.count("G")) + ",",
  #       str(seq.count("C")) + ",",
  #       str(seq.count("T"))) # can keep if want to print to screen too
  print(str(seq.count("A")) + ",",
        str(seq.count("G")) + ",",
        str(seq.count("C")) + ",",
        str(seq.count("T")),
        file = outfile)

infile.close()
outfile.close()


# def BASE(FileName):
#   infile = open("./" + str(FileName) + ".seq", "r")
#   outfile = open("./" + str(FileName) + ".count", "w")
# 
#   for seq in infile:
#     # print(str(seq.count("A")) + ",",
#     #       str(seq.count("G")) + ",",
#     #       str(seq.count("C")) + ",",
#     #       str(seq.count("T"))) # can keep if want to print to screen too
#     print(str(seq.count("A")) + ",",
#           str(seq.count("G")) + ",",
#           str(seq.count("C")) + ",",
#           str(seq.count("T")),
#           file = outfile)
# 
#   infile.close()
#   outfile.close()
# BASE("test")
