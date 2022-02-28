### Important Note to Windows Users:

##R gets confused if you use a path in your code like:
# c:\mydocuments\myfile.txt  - This is because R sees "\" as an escape character. 
#Instead, use:
#c:\\my documents\\myfile.txt
#c:/mydocuments/myfile.txt        - On linux 


### Getting the help

help.start()        # general help
help()              # help about function help
help(View)        # Help about nay specific functionAll Panels



#   ? & ?? --- What is the difference between two operators.

?getwd
??getwd
RSiteSearch("getwd") # search for help in help manuals and archived mailing lists

### The Workspace

getwd()             # print the current working directory - cwd
list.dirs()         # Get the list of all working directory
setwd("E:/Training/Training")      # change to mydirectory
ls()                # list the objects in the current workspace


# view and set options for the session

help(options)       # learn about available options
options()           # view current option settings


# work with your previous commands

history()           # display last 25 commands
history(max.show=Inf) # display all previous commands




# Working With History

savehistory(file="myfile") # save your command history  default is ".Rhistory" 
loadhistory(file="myfile") # recall your command history  default is ".Rhistory"

q()                 # quit R. You will be prompted to save the workspace.


###Packages

.libPaths()         # get library location 
library()           # see all packages installed 
search()            # see packages currently loaded


#Customizing Startup - Check PPT


### Operators

x <- 5             # Assigment oprerators
x

x = 6              # Assigment operators
x

x <- 4
x

x <<- 5
x

6 -> x
x




#   ???? --- What is the difference between two assigmnet operators

### Arithmetic with R

1+2               #Addition
5-3               #Subtraction
1/2               #Division
2^3               #Exponents
5 %% 2            #Modulo
(100 * 2) + (50 / 2)  #Order of Operations

### Logical/Comparison Operators with R

5 > 6             #Greater Than
6 > 5             #Greater Than
6 >= 6            #Greater Than or Equal to
3 < 2             #Less Than and 
2 <= 2            #Less than or Equal To
var <- 1          #Be very careful with comparison operators and negative numbers! 
var               #Use spacing to keep things clear. An example of a dangerous situation:
var < -2          
var < - 2          # Accidentally reassigning var!
var               #Value will get reassigned
5 != 2            #Not Equal
4 == 3             #Equal

### Vector Comparisons

v1 <- c(7,8,11)    #We can also do element by element comparisons for two vectors:
v2 <- c(10,20,30,40,50)  

v1 < v2           #Vector comparison
v1 + v2

v <- c(1,2,3,4,5) #We can apply a comparison of a single number to an entire vector
v < 2
v == 3


### R Data Types

n <- 2.2        #Decimal (floating point values) are part of the numeric class in R        #Natural (whole) numbers are known as integers and are also part of the numeric class
k <- 8

class (n)       #Checking Data Type Classes
class (k)       #Checking Data Type Classes
Class (N)       # ????  Why there is Error here.

typeof(n)
n
class(n)


A <- TRUE       
T <- FLASE       # ????   What is the difference between these statement.
T <- FALSE  

T

TRUE <- "F"

f <- FALSE

rm(A)

T
t
F
f

class(T)
class(f)       ##Boolean values (True and False) are part of the logical class. In R these are written in All Caps.


char <- "Hello World!"       #Text/string values are known as characters in R. You use quotation marks to create a text character string:
char

c <- 'Hello World!'   # Text values with single quotes
c

                #  ????   What is the differnce between above statment.

class (char)    #Checking Data Type Classes  
class (c)       #Checking Data Type Classes



####  Variables

variablenames <- 100

bank.account <- 100
deposit <- 10
bank.account <- bank.account + deposit
bank.account




####   Working with R- Data Types

#Vector 

vector("logical",2) 

vector("integer",2)

vector("numeric",2)

vector("double",2)

vector("character",2)

vector("complex",2)

#vector("raw",2)           #raw vectors are initialized to ‘nul’ bytes.


nvec <- c(1,2,3,4,5)      # Using c() to create a vector of numeric elements
class(nvec)

cvec <- c('U','S','A')    # Vector of characters
class(cvec)


lvec <- c(TRUE,FALSE)     # Vector of logical values
lvec
class(lvec)

#Assigment Practice

v <- c(FALSE,2)
v
#class(v)


v <- c('A',1)
v
#class(v)


# ???? ----- What is the problem with above statement.

#c(72,71,68,73,69,75,71)
## Working with Vectors

temps <- c(1,2,3,4,5,6,7,8)
temps
names(temps) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')   #We can use the names() function to assign names to each element in our vector.
temps


days <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temps2 <- c(1,2,3,4,5,6,7,8)
names(temps2) <- days   ##We can use the names() function to assign names to each element in our vector.
temps2



v1 <- c(1,2,3,4)
v2 <- c(5,6,7)


v1+v2    #Adding Vectors

v1-v1    #Subtracting Vectors
v1-v2

v1*v2    #Multiplying Vectors

v1/v2    #Dividing Vectors

sum(v1)    #Functions with Vectors

v <- c(12,45,100,2)
sd(v)    # Standard Deviation

max(v)    # Maximum Element

min(v)    #Minimum Element

prod(v1)  # Product of elements 
prod(v2)  # Product of elements

## Vector Indexing and Slicing

v1 <- c(100,200,300)
v2 <- c('a','b','c')

v1
v2


v1[2]    # Grab second element
v2[2]    # Grab second element


## Multiple Indexing -We can grab multiple items from a vector by passing a vector of index positions inside the square brackets. 

v1[c(1,2)]
v2[c(2,3)]
v2[c(1,3)]



## Slicing - vector[start_index:stop_index] - we can use a colon (:) to indicate a slice of a vector.

v <- c(1,2,3,4,5,6,7,8,9,10)
v[2:4]
v[7:10]

v[c(1:3, 5,7:9)]

## Indexing with Names

v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')
v
v['a'] 
v[c('a','c','d')]               #We can use those names along with the indexing brackets to grab individual elements from the array!
v[c('a':'c','d')] # Or pass in a vector of names we want to grab: # Notice how we can call out of order!

x <- c(11,12,13,14)
y <- c('a','b','c','d')
names(y)<-x
y[c('11':'14','14','13')] #why it is .....just check.


## Comparison Operators and Selection  
v <- c(6,7,8,9)
v
v[v>7]
v>7      ## ???? ---- What are supposed tobe the out put and why

v[v>7]
filter <- v>7    #We could also assign names to these logical vectors and pass them as well,
filter
v[filter]



##Lets create confusion

a=c(1,2)
typeof(a)
class(a)

a=c(2,"1")
typeof(a)
class(a)
a           # ???? - What would be the expected output.

            # What is difference between typeof and class.



#### Important Notes :
a=c(1,2)
class(a)

b=as.character(a)
b                     #The typeof() method that we saw, determines the internal storage type of an object. You can explicitly convert elements of a vector from one type to another using the as.XXX() function.
class (b)

#Subsetting  

a <- c(11,22,33,44,55,66,77,88,99)
a[3]
a[[5]]

a[1:2]
a[[3:4]]        #[ ] can be used to retrieve a subset of the vector. It returns another list. Even if you want to retrieve a single element, it retrieves a list. ‘[[]]’ can be used to retrieve a single element. It cannot return more than one element.

1:6
seq(1:6)
              #a=c('a','b','c','d','e')
a[3]            
a[c(1,4)]       #We can retrieve a subset by specifying multiple indexes

a[seq(1,6,2)]     #We can subset using a rang
a[-3]           # We can give it a negative index to 'exclude' that element.this excludes the third element. 

a[5/2]          #You could also give it a mathematical expression

a[1-3]          # It will be considered as aritmatic operation and the vlaue at index postion 2 will be deleted as the resultant index position would be -2.

a[c(1,0)]      #A missing value in index is converted to a missing value in the output

a[c(-2,-4)]      #you can't include both negative and positive numbers only 0's may be mixed with negative subscripts

a[c(0,-1)]

a[c(-2,1)]





######--------------Exercise Time -------Check PPT-----------#####




####  Working With  Matrix
#We've learned about vectors which allow us to store indexed elements. 
#A matrix will allow us to have a 2-dimensional data structure which contains elements consisting of the same data type.

1:10

v <- 1:6
v

matrix(v)             #use the matrix() function. We can pass in a vector into the matrix:


matrix(v,nrow=2)      #Here we have a two-dimensional matrix which is 10 rows by 1 column. Now what if we want to specify the number of rows? We can pass the parameter/argument into the matrix function called nrow which stands for number of rows:


matrix(1:12,byrow = FALSE,nrow=4)   #Now we have a 2 by 5 matrix. Notice that the nrow argument allows this to happen. But how do we decide the fill order? We could have filed columns first (as we did above) or filled out the rows first insequential order. The byrow argument allows you to specify whether or not you want to fill out the matrix by rows or by columns. 


matrix(1:12, byrow=TRUE, nrow=4)    #

#Creating Matrices from Vectors

# We can combine vectors to later input them into a matrix. 
#For example imagine the following vectors below of stock prices:not real prices

goog <- c(450,451,452,445,468)
msft <- c(230,231,232,236,228)

stocks <- c(goog,msft)

stock.matrix <- matrix(stocks,byrow=TRUE,nrow=2)

stock.matrix

#Naming Matrices

days <- c('Mon','Tue','Wed','Thu','Fri')

st.names <- c('GOOG','MSFT')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix


##Matrix Arithmetic


mat <- matrix(1:6, nrow =2)
mat1 <- matrix(10:15, nrow =3)

mat+mat

mat+mat1

mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat

2*mat     # Multiplication

1/mat     # Division (reciprocal)
 
mat/2     # Division

mat ^ 2   # Power

mat > 17    # Comparison operators with matrices

mat + mat   # Matrix Arithmetic with multiple matrices

mat / mat   #  Matrix Arithmetic

mat ^ mat   #  Warning, big numbers!

mat*mat     #  Warning, big numbers!

mat*mat

mat%*%mat


##  Matrix multiplication

mat2 <- matrix(1:9, nrow=3)     

mat2

mat2 %*% mat2      # True Matrix Multiplication


##  Matrix Operations


colSums(stock.matrix)   #We can perform functions across the columns and rows, such as colSum:

rowSums(stock.matrix)   #We can perform functions across the columns and rows, such as row:

rowMeans(stock.matrix) #We can also do other mathematical operations


##  Binding columns and rows

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)
tech.stocks

 avg <- rowMeans(tech.stocks)
avg
 
test<- matrix(c(23,24,23,24))
#colnames(test) <- "SAT"
tech.stocks <- cbind(tech.stocks,test)
tech.stocks



##  Matrix Selection and Indexing
mat <- matrix(1:25, nrow=5, byrow = T) 

mat[1,]  # Grab first row

mat[,1]  #Grab first column

mat[1:3,] # Grab first 3 rows

mat[1:2,1:3]  # Grab top left rectangle of: 1,2,3 and 11,12,13

mat[,9:10]   # Grab last two columns

mat[2:3,5:6]  # Grab a center square of: # 15,16 and # 25,26





## Factor and Categorical variables

animal <- c('d','c','d','c','c')
 
factor.ani <- factor(animal)

factor.ani      ## Will show levels as well on RStudio or R Console : We can see that we have two levels, 'd' and 'c'. In R there are two distinct types of categorical variables, a ordinal categorical variable and a nominal categorical variable .

summary(factor.ani)            #Nominal categorical variables don't have any order, such as dogs and cats (there is no order to them). Versus Ordinal categorical variables (as the name implies) do have an order. For example, if you had the vector:

ord.cat <- c('cold','med','hot')   #You could begin to assign in order to these variables, such as: cold < med < hot

factor.ani <- factor(ord.cat)

temps <- c('hot','cold','med','cold','med','hot','hot','cold','hot','hot')
fact.temp <- factor(temps,ordered=TRUE, levels=c('cold','med','hot'))
fact.temp

summary(fact.temp)
summary(fact.temp)   #This information is useful when used along with the summary() function which is an amazingly convenient function for quickly getting information from a matrix or vector



####  Working With Dataframe  


data()   
mtcars
 
View(PlantGrowth)

str(mtcars)

state.x77   # Dataframe about states

str(PlantGrowth)

USPersonalExpenditure # US personal expense

women   # Women 

data()     #listing all datasets

data(mtcars)
View(airquality)
summary(mtcars)
mtcars
str(mtcars)
summary(airquality)

head(airquality)          #

tail(airquality)

str(states)
summary (states)

str(mtcars)

data.frame()
## Creating Data frames

days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)  

df <- data.frame(days,temp,rain)      #We can create data frames using the data.frame() function and pass vectors as arguments, which will then convert the vectors into columns of the data frame. 
df
str(df)      # Check structure
summary(df)  # Check Summary


z <- df[1,]
is.data.frame(df[1,])
is.vector(df[1,])
## Data Frame Selection and Indexing


df[1,]  # Everything from first row

df[,1]  #Everything from first column

df[5,]  # Grab Friday data

##  Selecting using column names

x<- df[,'rain']   # All rain values

y<- df['rain']

df[1:3,c('days','temp')]  # First 3 rows for days and temps


df$rain   # If you want all the values of a particular column you can use the dollar sign directly after the dataframe as follows: df.name$column.name

df$days


df['rain']  # You can also use bracket notation to return a data frame format of the same information:

df['days']

##  Filtering with a subset condition   -We can use the subset() function to grab a subset of values from our data frame based off some condition


subset(df,rain==TRUE)

subset(df,(temp >23|rain==TRUE))

df$temp >23

df[(temp>23 & rain==TRUE),]


sorted.temp <- order(df['temp'])  # Odering a Data Frame - We can sort the order of our data frame by using the order function. 
#You pass in the column you want to sort by into the order() function, then you use that vector to select from the dataframe. 
df[sorted.temp,]

sorted.temp

desc.temp <- order(-df['temp'])    #so we are just asking for those index elements in that order (by default ascending, we can pass a negative sign to do descending order):
df[desc.temp,]


sort.temp <- order(df$temp, df$days)     #We could have also used the other column selection methods:
df <- df[sort.temp,]


st <- order(mtcars$mpg, mtcars$cyl)
mtcars[st,]


##  Overview of Data Frame Operations

empty <- data.frame()     # creating empty data frame

c1 <- 1:10                # vector of integers

c2 <- letters[1:10]       # vector of strings

df <- data.frame(x=c1,y=c2)

df
colnames(mtcars)

## Getting Information about Data Frame

nrow(df)                  # Row and columns counts
ncol(df)

colnames(df)             # Column Names

rownames(df)            # Row names (may just return index)

rownames(mtcars)
colnames(mtcars)
##  Referencing Cells, we can think of the basics as using two sets of brackets for a single cell, and a single set of brackets for multiple cells.



vec <- df[[5, 2]]       # get cell by [[row,col]] num

newdf <- df[1:5, 1:2]   # get multiplt cells in new df

newdf <- df[[1:5, 1:2]]

df[[2, 'y']] <- 'c'  # reassign a single cell

df[2, ] <- 'c'

str(df)


rowdf <- df[1, ]          # Referencing Rows  # returns a data frame (and not a vector!)

rowdf             

# vrow <- as.numeric(as.vector(df[1,]))             # to get a row as a vector, use following
# vrow


cars <- mtcars
head(cars)             # Referencing Columns - Most column references return a vector

colv1 <- cars$mpg      # returns a vector
colv1

colv2 <- cars[,'mpg'] # returns vector
colv2

colv3<- cars[, c(1,2)]      # a is int or string
colv3

colv4 <- cars[[,3]] # returns a vector
colv4

#is.vector(mpgdf)

mpgdf <- cars['mpg']   # Ways of Returning Data Frames #returns 1 col df
head(mpgdf)

mpgdf2 <- cars[1:2]     # returns 1 col df
head(mpgdf2)

cars$mpg[3]
 
##  Adding Rows 

df2 <- data.frame(col.name.1=2000,col.name.2='new' )    # Both arguments are DFs)
df2


dfnew <- rbind(df,df2)  # use rbind to bind a new row!
dfnew


df1 <- data.frame(x=1:10, y=letters[1:10])
df2 <- data.frame(x=1:14, y=letters[1:14])
df5 <- data.frame(x=1:2, y=letters[1:2])

df3 <- cbind(df1, df2)
df4 <- rbind(df2, df1)

df6 <- cbind(df1, df5)
##  Adding Columns

df2$newcol6 <- rep('im', (nrow(df1)-3))     
df2
# NA column
df1
df1[, 'copy.of.col8'] <- df1$x*2         # copy a col

df1$z <- df1$x*3
df1
colnames(df1)                                  # Column Names

  
df1[['col1.times.2']] <- (1:10) * 2     # Can also use equations!
df1


df3 <- cbind(df, df$col.name.1)
df3

df<-mtcars
df$hp[22]<-NA


##  Setting Column Names


colnames(df)[2] <- 'SECOND COLUMN NEW NAME'         # Rename second column
df

colnames(df)[c(2,3)] <- c('A', 'B')
 
colnames(df) <- c('col.name.1', 'col.name.2', 'newcol', 'copy.of.col2' ,'col1.times.2')
df


mtcars[c(((nrow(mtcars)/2)-3) :((nrow(mtcars)/2)+3)),]

## Selecting Multiple Rows

first.ten.rows <- df[1:10, ] # Same as head(df, 10)
first.ten.rows

df[8/4,]
everything.but.row.two <- df[-2, ]
everything.but.row.two

df[,-2 ]

# Conditional Selection
sub1 <- df[ (df$col.name.1 > 8 & df$col1.times.2 > 10), ]
sub1

sub2 <- subset(df, col.name.1 > 8 & col1.times.2 > 10)
sub2




 z<-df1$x>5
df1[z,]

df1[(df1$x  >5),]

df1[,]

##  Selecting Multiple Columns

df[, c(1, 2, 3)]              #Grab cols 1 2 3
df[, c('col.name.1', 'col1.times.2')]   # by name
df[, -1]                # keep all but first column
df[, -c(1, 3)]             # drop cols 1 and 3



##  Dealing with Missing Data

x<-is.na(airquality) # detect anywhere in df

y <- complete.cases(airquality)

airquality[y,]

any(is.na(df$col.name.1)) # anywhere in col

df <- df[!is.na(df$col), ] # delete selected missing data rows

df1[is.na(df1),] <- 0 # works on whole df  # replace NAs with something else


df$col[is.na(df$col)] <- 999 # For a selected column

df


df1$y[c(8,9)] <- NA

df1[is.na(df1)] <- 'i'


##---------------------End DF--------------##

#List :  R Lists Basics

# Create a vector
v <- c(1,2,3,4,5)

# Create a matrix
m <- matrix(1:10,nrow=2)

# Create a data frame
df <- women

li1 <- list(m,v,df)   #We can use the list() to combine all the data structures:

str(li1)

#li[[3]][2,2]

li <- list(vec = v,mat = m, df = df)

li$mat[10]

li[[c(2)]][2,3]

li[[2]][9]

class(li[[1]])
#l <- list(1:10 , df)

li[-2]

li$df[6,2]

li$df$height[7]

li[3]



li$sample_mat

class(li$sample_mat)

# Single brackets
li[3] # By index

# By name
li['vec']

class(li['vec'])

# Notice the type!
class(li[['mat']])


# Use double brackets to actually grab the items
li[['sample_vec']]


# Can also use $ notation
li$sample_vec

li[['sample_mat']][2,3] # Second set of indexing

li['sample_df']$height

li$sample_df$height

 
li$sample_df$height[10]

##  Combining lists

double_list <- c(li,li)

double_list

 dl <- list(li, li)

 str(double_list)

str(dl)

double_list$height

double_list[]


k <- list(v, m, df, li)
str(k)

x<-list( sample_list = li, newlist = li, df = df)

x$sample_list$df$weight[9]

#### Built-in function in R

v <- c(-1,0,1,2,3,4,5) 
v

sum(v)

mean(v)

round(23.1231)

round(23.1231234,2)

ceiling(23.12312)

sqrt(5)


x <- mtcars
View(x)

# To check delete column names with names.

# x[,-c("mpg","cyl")]
# 
# colnames(x)


##-----------------------------End R Basics---------------##



## Logical Operators  - AND - & OR - | NOT - !


x <- 10   # Imagine the variable x

x < 20  

x > 5

x < 20 & x > 5       #Use of and operators

(x < 20) & (x>5)    #We can also add parenthesis for readability and to make sure the order of comparisons is what we expect:

(x < 20) & (x>5) & (x == 10)


x==2 & x > 1


x==2 | x > 1       # Use of OR operator

x==1 | x==12


(10==1)

!(10==1)           # Use of NOT operator

!!(10==1)         # We can stack them (pretty uncommon, but possible)


## Use Case Example


df <- mtcars

df

df[df['mpg'] >= 20,]   # Notice the use of indexing with the comma # subset(df,mpg>=20) # Could also use subset

df[(df['mpg'] >= 20) & (df['hp'] > 100),]  #Now let's combine filters with logical operators! Let's grab rows with cars of at least 20mpg and over 100 hp.


str(mtcars)
summary(mtcars)
boxplot(mtcars)

## Logical Operators with Vectors

tf <- c(TRUE,FALSE,TRUE)
tt <- c(TRUE,TRUE,TRUE)
ft <- c(FALSE, TRUE,TRUE)

tt & tf
ft & tf

tt | tf

ft && tt       #To compare first elements use && or ||

tt[2] && tf[3]

tt || tf

tt || ft















