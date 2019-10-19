import os
import csv

cwd = os.getcwd()

csvpath= os.path.join(cwd,"PyBank","Resources", "budget_data.csv")

date = []
profitlos = []
total= 0 
cur=0
prev =0
change = 0
great_change = 0 
minchange = change

with open(csvpath, 'r', newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
     header = next(csvreader)
    for row in csvreader:
        #print(row[0])
        date.append(row[0])

        #print (row[1])
        profitlos.append(row[1])
        total=total+int(row[1])
     
     #maxchange
        prev = cur
        cur = row [1]
        change= cur - prev
        if change > great_change
            great_change = change
    
     # minchange 
        if change < minchange
            minchange = change


print(len("Total Months:" date))
print ("Total:"total)
print ( " Greatest Increase in Profits:"great_change)
print  ("Greatest Decrease in Profits:" minchange)
 


