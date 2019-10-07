> library("arules", lib.loc="~/R/win-library/3.5")
Loading required package: Matrix

Attaching package: 'arules'

The following objects are masked from 'package:base':
  
  abbreviate, write

> setwd("~/CIS 335")
> t=read.transaction("hw04data.txt",sep=',')
Error in read.transaction("hw04data.txt", sep = ",") : 
  could not find function "read.transaction"
> detach("package:arules", unload=TRUE)
> library("arules", lib.loc="~/R/win-library/3.5")

Attaching package: 'arules'

The following objects are masked from 'package:base':
  
  abbreviate, write

> t=read.transaction("hw04data.txt",sep=',')
Error in read.transaction("hw04data.txt", sep = ",") : 
  could not find function "read.transaction"
> t=read.transactions("hw04data.txt",sep=',')
> ruls=apriori(t,parameter = list(support=.2,confidence=.3))
Apriori

Parameter specification:
  confidence minval smax arem  aval originalSupport maxtime support minlen maxlen target   ext
0.3    0.1    1 none FALSE            TRUE       5     0.2      1     10  rules FALSE

Algorithmic control:
  filter tree heap memopt load sort verbose
0.1 TRUE TRUE  FALSE TRUE    2    TRUE

Absolute minimum support count: 2 

set item appearances ...[0 item(s)] done [0.00s].
set transactions ...[4 item(s), 10 transaction(s)] done [0.00s].
sorting and recoding items ... [4 item(s)] done [0.00s].
creating transaction tree ... done [0.00s].
checking subsets of size 1 2 3 done [0.00s].
writing ... [15 rule(s)] done [0.00s].
creating S4 object  ... done [0.00s].
> inspect(ruls)
lhs               rhs      support confidence lift      count
[1]  {}             => {milk}   0.3     0.3000000  1.0000000 3    
[2]  {}             => {beer}   0.5     0.5000000  1.0000000 5    
[3]  {}             => {diaper} 0.7     0.7000000  1.0000000 7    
[4]  {}             => {bread}  0.8     0.8000000  1.0000000 8    
[5]  {milk}         => {bread}  0.3     1.0000000  1.2500000 3    
[6]  {bread}        => {milk}   0.3     0.3750000  1.2500000 3    
[7]  {beer}         => {diaper} 0.4     0.8000000  1.1428571 4    
[8]  {diaper}       => {beer}   0.4     0.5714286  1.1428571 4    
[9]  {beer}         => {bread}  0.3     0.6000000  0.7500000 3    
[10] {bread}        => {beer}   0.3     0.3750000  0.7500000 3    
[11] {diaper}       => {bread}  0.5     0.7142857  0.8928571 5    
[12] {bread}        => {diaper} 0.5     0.6250000  0.8928571 5    
[13] {beer,diaper}  => {bread}  0.2     0.5000000  0.6250000 2    
[14] {beer,bread}   => {diaper} 0.2     0.6666667  0.9523810 2    
[15] {bread,diaper} => {beer}   0.2     0.4000000  0.8000000 2 