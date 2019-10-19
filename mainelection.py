import os
import csv

cwd = os.getcwd()

csvpath= os.path.join(cwd,"PyBank","Resources", "election_data.csv")

voterid []
county []
canidate []
total = 0
Khantol = 0
correytol = 0
litol = 0
otoltol = 0

with open(csvpath, 'r', newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
     header = next(csvreader)
#The total number of votes cast
      voterid.append(row[0])

         canidate.append(row[2])
    # precentage of votes
    khantotal=total+int(row[2])
    print "{0:.0f}%".format(khantotal* 100)
    correytol=total+int(row[2])
    print "{0:.0f}%".format(correytol* 100)
    litol= total+int(row[2])
     print "{0:.0f}%".format(litol* 100)
    otoltol = total+int(row[2])
     print "{0:.0f}%".format(otoltol* 100)
    #number of votes
    #specific name

    khantotal=total+int(row[2])
    correytol=total+int(row[2])
    litol= total+int(row[2])
    otoltol = total+int(row[2])
      #The winner of the election based on popular vote

      print (len(voterid))