> library("neuralnet", lib.loc="~/R/win-library/3.5")
Warning message:
  package 'neuralnet' was built under R version 3.5.3 
> library("Deriv", lib.loc="~/R/win-library/3.5")
Warning message:
  package 'Deriv' was built under R version 3.5.3 
> setwd("~/CIS 335")
> dataTrain=read.table("dataTrain.txt",header=TRUE)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'dataTrain.txt': No such file or directory
> dataTest=read.table("dataTest.txt",header=TRUE)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'dataTest.txt': No such file or directory
> dataTrain[,5]=dataTrain[,5]*2-1
Error: object 'dataTrain' not found
> dataTest[,5]=dataTest[,5]*2-1
Error: object 'dataTest' not found
> mod = neuralnet(class~var1+var2+var3+var4,dataTrain,hidden=3, linear.output=T)
Error in neuralnet(class ~ var1 + var2 + var3 + var4, dataTrain, hidden = 3,  : 
                     object 'dataTrain' not found
                   > plot(mod)
                   Error in plot(mod) : object 'mod' not found
                   > pred=compute(mod,dataTest[,1:4])
                   Error in predict.nn(x, newdata = covariate, rep = rep, all.units = TRUE) : 
                     object 'mod' not found
                   > table(sign(pred$net.result),dataTest[,5])
                   Error in table(sign(pred$net.result), dataTest[, 5]) : 
                     object 'pred' not found
                   > dataTrain=read.table("hw07dataTrain(1).txt",header=TRUE)
                   > dataTest=read.table("hw07dataTest(1).txt",header=TRUE)
                   > dataTrain[,5]=dataTrain[,5]*2-1
                   > dataTest[,5]=dataTest[,5]*2-1
                   > mod = neuralnet(class~var1+var2+var3+var4,dataTrain,hidden=3, linear.output=T)
                   Error in model.frame.default(as.formula(call("~", formula[[2]])), data) : 
                     object is not a matrix
                   > plot(mod)
                   Error in plot(mod) : object 'mod' not found
                   > pred=compute(mod,dataTest[,1:4])
                   Error in predict.nn(x, newdata = covariate, rep = rep, all.units = TRUE) : 
                     object 'mod' not found
                   > table(sign(pred$net.result),dataTest[,5])
                   Error in table(sign(pred$net.result), dataTest[, 5]) : 
                     object 'pred' not found
                   > View(dataTest)
                   > View(dataTrain)
                   > dataTrain[dataTrain[,5]<0,5]=-1
                   > dataTest[dataTest[,5]<0,5]=-1
                   > model=neuralnet(team~age+height+dash+bench,dataTrain,hidden=3,set.seed(1),linear.output = T)
                   Error in if (is.na(threshold)) { : argument is of length zero
                     > model=neuralnet(team~age+height+dash+bench,dataTrain,hidden=3,set.seed(1))
                     Error in if (is.na(threshold)) { : argument is of length zero
                       > set.seed(1)
                       > model=neuralnet(team~age+height+dash+bench,dataTrain,hidden=3,linear.output = T)
                       > plot(model)
                       > pred=compute(model,dataTest[,1:4])
                       > table(sign(pred$net.result),dataTest[,5])
                       
                       