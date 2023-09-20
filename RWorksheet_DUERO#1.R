#1.Set up a vector named age, consisting of 34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41.
age<-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)

length(age)
#a. How many data points? Answer=34

#2. Find the reciprocal of the values for age.
reciprocalAge<-1/age
reciprocalAge
#The reciprocal values of age are: 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276
#0.02857143 0.03225806 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816
#0.02000000 0.02702703 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784
#0.02857143 0.04166667 0.03030303 0.02439024

#3. Assign also new_age <- c(age, 0, age).
new_age<-c(age,0,age)
new_age
#What happen to new_age? Since the object "age" is entered twice, the values of the object "age" entered twice
#with a 0 in between since it was entered. 

#4. Sort the values for age.
sort(age)
#The sort in vector age is:17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 
#34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57 

#5. Find the minimum and maximum value for age.
min(age)
#The minimum age in vector "age" is 17.
max(age)
#The maximum age in vector "age" is 57. 

#6. Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, and 2.7.
data<-c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
length (data)        
#a. How many data points? 12

#7. Generates a new vector for data where you double every value of the data.
dataDouble<-(data*2)
dataDouble
#What happen to the data? The data being multiplied by 2, gives the doubled value of the object "data".

#8. Generate a sequence for the following scenario:
#a. 8.1 Integers from 1 to 100.
seqIn<-(1:100)
seqIn
remove (seqIn)
c<-seq(1,100)
c

#b.8.2 Numbers from 20 to 60
o<-seq(20,60)
o

#8.3 Mean of numbers from 20 to 60
d<-mean(20,60)
d

#8.4 Sum of numbers from 51 to 91
e<-sum(51,91)
e






