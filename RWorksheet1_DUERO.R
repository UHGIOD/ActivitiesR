#1.Set up a vector named age, consisting of 34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41.
age<-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)

length(age)
#a. How many data points? Answer=34

#2. Find the reciprocal of the values for age. Write the R code and its output. 
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

#4. Sort the values for age.Write the R code and its output.
sort(age)
#The sort in vector age is:17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 
#34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57 

#5. Find the minimum and maximum value for age. Write the R code and its output.
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
#What happen to the data? The data being multiplied by 2, gives the doubled value of the object "data", resulting to the value of [4.8 5.6 4.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6 4.8 5.4].  

#8. Generate a sequence for the following scenario:
#a. 8.1 Integers from 1 to 100.
seqIn<-(1:100)
seqIn
remove (seqIn)
c<-seq(1,100)
c
length(c)

#b.8.2 Numbers from 20 to 60
o<-seq(20,60)
o
length(o)

#8.3 Mean of numbers from 20 to 60
d<-mean(20:60)
d
length(d)

#8.4 Sum of numbers from 51 to 91
e<-sum(51:91)
e
length(e)

#8.5 Integers from 1 to 1,000
s<-seq(1:1000)
s

seqOfNumbers<-c(c,o,d,e)
seqOfNumbers

#a.How many data points from 8.1 to 8.4?
length(seqOfNumbers)

#Data points from:
#8.1= 100 data points
#8.2= 41 data points
#8.3= 1 data points
#8.4= 1 data points
#Total data points= 143 points

#b.Write the R code and its output from 8.1 to 8.4.
#[1]    1    2    3    4    5    6    7    8    9   10
#[11]   11   12   13   14   15   16   17   18   19   20
#[21]   21   22   23   24   25   26   27   28   29   30
#[31]   31   32   33   34   35   36   37   38   39   40
#[41]   41   42   43   44   45   46   47   48   49   50
#[51]   51   52   53   54   55   56   57   58   59   60
#[61]   61   62   63   64   65   66   67   68   69   70
#[71]   71   72   73   74   75   76   77   78   79   80
#[81]   81   82   83   84   85   86   87   88   89   90
#[91]   91   92   93   94   95   96   97   98   99  100
#[101]   20   21   22   23   24   25   26   27   28   29
#[111]   30   31   32   33   34   35   36   37   38   39
#[121]   40   41   42   43   44   45   46   47   48   49
#[131]   50   51   52   53   54   55   56   57   58   59
#[141]   60   40 2911

#c.For 8.5 find only maximum data points until 10.
s=(1:10)
max(s)
#The maximum data points is 10. 

#9. Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option. filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
#Output: [1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47 52 53 58 59 61 62 64 67 68 71 73 74 76 79 82 83 86
#[41] 88 89 92 94 97

#10. Generate a sequence backwards of the integers from 1 to 100. Write the R code and its output.
seqReverse<-seq(100,1)
seqReverse

#11. List all the natural numbers below 25 that are multiples of 3 or 5.
num1<-(1:25)
num1
numMultiplies<-num1[num1 %% 3==0|num1 %% 5==0]
numMultiplies
#Find the sum of these multiples.
sumMultiplies<-sum(numMultiplies)
sumMultiplies

#a. How many data points from 10 to 11?
length(seqReverse)
length(numMultiplies)
length(sumMultiplies)
dataPoints10to11<-c(seqReverse,numMultiplies,sumMultiplies)
length(dataPoints10to11)
#Data points from 10 to 11 is 113. 

#b. Write the R code and its output from 10 and 11.
#10. 
#[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81  80  79  78  77  76  75  74  73  72  71
#[31]  70  69  68  67  66  65  64  63  62  61  60  59  58  57  56  55  54  53  52  51  50  49  48  47  46  45  44  43  42  41
#[61]  40  39  38  37  36  35  34  33  32  31  30  29  28  27  26  25  24  23  22  21  20  19  18  17  16  15  14  13  12  11
#[91]  10   9   8   7   6   5   4   3   2   1
#11. Natural numbers below 25 that are multiples of 3 or 5. 
#[1]  3  5  6  9 10 12 15 18 20 21 24 25
#11.(a) Find the sum of these multiples.
#[1] 168

#12. Statements can be grouped together using braces ‘{’ and ‘}’. A group of statements
#is sometimes called a block. Single statements are evaluated when a new line is typed at
#the end of the syntactically complete statement. Blocks are not evaluated until a new line is
#entered after the closing brace.
#Enter this statement:
#  { x <- 0+ x + 5 + }
#Describe the output.
{ x <- 0+ x + 5 + }
#Describe the output: After entering the statement, it states that there is an error. This can't be evaluated until a new line is entered after the closing brace since this is is only a SINGLE STATEMENT. 

#13. Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,
#75 and 77. To access individual elements of an atomic vector, one generally uses the x[i] construction.
#Find x[2] and x[3]. Write the R code and its output.
score<-c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
score[3]
#Output: 
#score[2]= 86
#score[3]= 92

#14. *Create a vector a = c(1,2,NA,4,NA,6,7).
a<-c(1,2,NA,4,NA,6,7)
#a. Change the NA to 999 using the codes print(a,na.print="-999").
print(a,na.print="-999")
#b. Write the R code and its output. Describe the output.
#Output: [1]    1    2 -999    4 -999    6    7
#The statement (a,na.print="-999")  utilize to identify positions with NA values in vector 'a' and replaces them with 999, 
#and when printed using `print(a, na.print = "-999")` with the specified option, it displays the modified vector with NA values replaced by -999.

#15. A special type of function calls can appear on the left hand side of the assignment
#operator as in > class(x) <- "foo".
#Follow the codes below:
  #name = readline(prompt="Input your name: ")
#age = readline(prompt="Input your age: ")
#print(paste("My name is",name, "and I am",age ,"years old."))
#print(R.version.string)
#What is the output of the above code?
class(x)<-"foo"
x
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)
#What is the output of the above code?
#Output: "My name is Nicole and I am 19 years old."




