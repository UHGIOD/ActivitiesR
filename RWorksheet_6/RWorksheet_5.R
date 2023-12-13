#1. Create a data frame for the table below. Show your solution.

StudentData<- data.frame (
  Students = c(1,2,3,4,5,6,7,8,9,10),
  preTest =  c(55,54,47,57,51,61,57,54,63,58),
  postTest = c(61,60,56,63,56,63,59,56,62,61)
)

        #a. Compute the descriptive statistics using different packages (Hmisc and pastecs).Write the codes and its   result

        #install.packages("Hmisc")
        library(Hmisc)
        #install.packages("pastecs")
        library(pastecs)

        stats_Hmisc<-describe(StudentData)
        stats_pastecs <- stat.desc(StudentData)
        
        #RESULT:
       #stat_Hmisc
       # StudentData 
        
       # 3  Variables      10  Observations
        #----------------------------------------------------------------------------------------------------------------------------
         # Students 
        #n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
        #10        0       10        1      5.5    3.667     1.45     1.90     3.25     5.50     7.75     9.10     9.55 
        
        #Value        1   2   3   4   5   6   7   8   9  10
        #requency    1   1   1   1   1   1   1   1   1   1
        #Proportion 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1
        
        #For the frequency table, variable is rounded to the nearest 0
        #----------------------------------------------------------------------------------------------------------------------------
          #preTest 
        #n  missing distinct     Info     Mean      Gmd 
        #10        0        8    0.988     55.7    5.444 
        
        #Value       47  51  54  55  57  58  61  63
        #Frequency    1   1   2   1   2   1   1   1
        #Proportion 0.1 0.1 0.2 0.1 0.2 0.1 0.1 0.1
        
        #For the frequency table, variable is rounded to the nearest 0
        ----------------------------------------------------------------------------------------------------------------------------
          #postTest 
        #n  missing distinct     Info     Mean      Gmd 
        #10        0        6    0.964     59.7    3.311 
        
        #Value       56  59  60  61  62  63
        #Frequency    3   1   1   2   1   2
        #Proportion 0.3 0.1 0.1 0.2 0.1 0.2
        
        #For the frequency table, variable is rounded to the nearest 0
        #---------------------------------------------------------------------------------------------------------------
        
        
#2. The Department of Agriculture was studying the effects of several levels of a fertilizer on the growth of a plant. For some analyses, it might be useful to convert the fertilizer levels to an ordered factor.

      #a. Write the codes and describe the result.
      fertilizeData <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)
      ordered(fertilizeData)
      #RESULT: The data 'fertilizeData' shows the ordered data of the said dataset.

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the ex-ercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”,“n”, “i”, “l” ; n=none, l=light, i=intense.

      # a. What is the best way to represent this in R?

      LevelExcers<- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")
      FactorExcers <- factor(LevelExcers, levels = c("n", "l", "i"), labels = c("none", "light", "intense"))
      FactorExcers

# 4. Sample of 30 tax accountants from all the states and territories of Australia and their individual state of origin is specified by a character vector of state mnemonics as:
states_Australia <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

      #a. Apply the factor function and factor level. Describe the results.
      factorLevel<-factor(states_Australia, levels = c("act", "nsw", "nt", "qld", "sa", "tas", "vic", "wa") )  
      factorLevel
      #DESCRIPTION: the 'factorLevel' object result is factor with level.

# 5. From #4 - continuation:
# • Suppose we have the incomes of the same tax accountants in another vector (in suitably large units of money)

same_incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

      # a. Calculate the sample mean income for each state we can now use the special function tapply():
      sincome_means <- tapply(same_incomes, factorLevel, mean)
      sincome_means

      # b. Copy the results and interpret.
      #RESULT: 
      #INTERPRET: By using the tapply() function, the result has the means of each states that has a factor with levels.
      # act      nsw       nt      qld       sa      tas      vic       wa 
      #44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000

#6. Calculate the standard errors of the state income means (refer again to number 3) 
#stdError <- function(x) sqrt(var(x)/length(x)) Note: After this assignment, the standard errors are calculated by: incster <- tapply(incomes, statef, stdError)

      #a. What is the standard error? Write the codes.
      stdError <- function(x) sqrt(var(x)/length(x))
      std_sincome<- tapply(same_incomes,factorLevel,stdError)
      std_sincome

      #b. Interpret the result.
      #ANSWER: It shows the calculated standard errors of the state income means. If the standard error of the state   income mean is relatively small, it means that the sample mean income is a relatively precise estimate of the true population mean income for that state. If the standard error is large, it suggests more variability in the sample mean, and less precision in estimating the true population mean.

#7. Use the titanic dataset.

      #a. subset the titatic dataset of those who survived and not survived. Show the codes and its result.
      library(datasets)
      data(Titanic)
      str(Titanic)
      View(Titanic)

      Titanic<-as.data.frame(Titanic)

      survived_data<-subset(Titanic, Survived=="Yes")
      survived_data
      #Class    Sex   Age Survived Freq
      #17   1st   Male Child      Yes    5
      #18   2nd   Male Child      Yes   11
      #19   3rd   Male Child      Yes   13
      #20  Crew   Male Child      Yes    0
      #21   1st Female Child      Yes    1
      #22   2nd Female Child      Yes   13
      #23   3rd Female Child      Yes   14
      #24  Crew Female Child      Yes    0
      #25   1st   Male Adult      Yes   57
      #26   2nd   Male Adult      Yes   14
      #27   3rd   Male Adult      Yes   75
      #28  Crew   Male Adult      Yes  192
      #29   1st Female Adult      Yes  140
      #30   2nd Female Adult      Yes   80
      #31   3rd Female Adult      Yes   76
      #32  Crew Female Adult      Yes   20

      not_survived_data <- subset(Titanic, Survived == "No")
      not_survived_data
      #Class    Sex   Age Survived Freq
      #1    1st   Male Child       No    0
      #2    2nd   Male Child       No    0
      #3    3rd   Male Child       No   35
      #4   Crew   Male Child       No    0
      #5    1st Female Child       No    0
      #6    2nd Female Child       No    0
      #7    3rd Female Child       No   17
      #8   Crew Female Child       No    0
      #9    1st   Male Adult       No  118
      #10   2nd   Male Adult       No  154
      #11   3rd   Male Adult       No  387
      #12  Crew   Male Adult       No  670
      #13   1st Female Adult       No    4
      #14   2nd Female Adult       No   13
      #15   3rd Female Adult       No   89
      #16  Crew Female Adult       No    3

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this chronologihttps://drive.google.com/file/d/16MFLoehCgx2MJuNSAuB2CsBy6eDIIru/view?usp=drive_link)

library(readr)
csv.file<-"breastcancer_wisconsin.csv"
breastcancer_wisconsin<-read.csv("breastcancer_wisconsin.csv")
breastcancer_wisconsin
summary(breastcancer_wisconsin)

    #a. describe what is the dataset all about.
    #ANSWER: The dataset 'breastcancer_wisconsin' is a database of clinical reports of the cases. It states here the identification number, where there are different categories of how malignant the breast cancer is. It is compute by numbers, where they range to 1-10.  

  #d. Compute the descriptive statistics using different packages. Find the values of:
    #d.1 Standard error of the mean for clump thickness.
    #Statistics/Packages used: stdError function
    clump_thickness_data <- breastcancer_wisconsin$clump_thickness
    std_error_clump_thickness <- stdError(clump_thickness_data)
    std_error_clump_thickness
    #VALUE: 0.1065011
  
    #d.2 Coefficient of variability for Marginal Adhesion.
    #Statistics/Packages used: Using mean and standard deviation to get the Coefficient of Variation. 
    marginal_adhesion_data <- breastcancer_wisconsin$marginal_adhesion
    meanMA <- mean(marginal_adhesion_data)
    standardDevMA <- sd(marginal_adhesion_data)
    CoeffVarMA <- standardDevMA / meanMA
    CoeffVarMA
    CoeffVarMA<-CoeffVarMA*100 #Getting the percentage
    CoeffVarMA
    #VALUE: 101.7283

    #d.3 Number of null values of Bare Nuclei.
    bare_nuclei_data <- breastcancer_wisconsin$bare_nucleoli
    nullValNuclei <- sum(is.na(bare_nuclei_data))
    nullValNuclei
    #VALUE: 15

    #d.4 Mean and standard deviation for Bland Chromatin
    #Statistics/Packages used:mean and standard deviation
    BlandChromatin <- breastcancer_wisconsin$bland_chromatin
    meanBC <- mean(BlandChromatin)
    sdBC <- sd(BlandChromatin)
    meanBC
    #VALUE: 3.437768
    sdBC
    #VALUE: 2.438364 

    #d.5 Confidence interval of the mean for Uniformity of Cell Shape
    #Using t.test function
    uniformity_cell_shape_data <- breastcancer_wisconsin$shape_uniformity
    #VALUE: 2.986741 3.428138
    confidence_interval <- t.test(uniformity_cell_shape_data, na.rm = TRUE)$conf.int
    confidence_interval
    #VALUE: 0.95

    #d. How many attributes?
    length(breastcancer_wisconsin)
    #VALUE: 11
    names(breastcancer_wisconsin)
    #VALUE: "id" "clump_thickness"   "size_uniformity"   "shape_uniformity"  "marginal_adhesion" "epithelial_size" "bare_nucleoli"  "bland_chromatin"   "normal_nucleoli"   "mitoses"           "class"

#e. Find the percentage of respondents who are malignant. Interpret the results
str(breastcancer_wisconsin)
View(breastcancer_wisconsin)
malignantData <- sum(breastcancer_wisconsin$class == 4) / nrow(breastcancer_wisconsin) * 100
malignantData
#INTERPRET: Based on the class data belonged to the breastcancer data, class 4 is considered to be malignant as if it is in class 4, some categories (e.g "clump_thickness"   "size_uniformity"   "shape_uniformity"  "marginal_adhesion" "epithelial_size" "bare_nucleoli"  "bland_chromatin"   "normal_nucleoli"   "mitoses"  ) are far more higher than the class 2. The higher the class, the higher the rate of the categories and vice versa. 
 
#9. Export the data abalone to the Microsoft excel file. Copy the codes.
  #install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
data("abalone")
View(abalone)
head(abalone)
summary(abalone)

getwd()  
Abalone_excel<-"C:/Users/User/Documents/Rstudio Files/AbaloneData.xlsx"
#install.packages("writexl")
library(writexl)

write_xlsx(abalone, Abalone_excel)
  
