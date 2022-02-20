raindrops <- function(number) {
  a = "Pling"
  b = "Plang"
  c = "Plong"
  e1=number %% 3
  e2=number %% 5
  e3=number %% 7
  paste0(
    ifelse(e1==0,"Pling",''),ifelse(e2==0,"Plang",''),ifelse(e3==0,"Plong",''),
    ifelse((e1!=0 & e2!=0 & e3!=0),number,'')
  )
}


Instructions
Your task is to convert a number into a string that contains raindrop sounds corresponding to certain potential factors. A factor is a number that evenly divides into another number, leaving no remainder. The simplest way to test if a one number is a factor of another is to use the modulo operation.

The rules of raindrops are that if a given number:

has 3 as a factor, add 'Pling' to the result.
has 5 as a factor, add 'Plang' to the result.
has 7 as a factor, add 'Plong' to the result.
does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.
Examples
28 has 7 as a factor, but not 3 or 5, so the result would be "Plong".
30 has both 3 and 5 as factors, but not 7, so the result would be "PlingPlang".
34 is not factored by 3, 5, or 7, so the result would be "34".
Source
A variation on FizzBuzz, a famous technical interview question that is intended to weed out potential candidates. That question is itself derived from Fizz Buzz, a popular children's game for teaching division.
