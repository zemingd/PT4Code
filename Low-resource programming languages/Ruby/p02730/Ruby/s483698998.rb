s = gets.chomp
n = s.length
s_arr = s.split('')

num1 = ((n-1)/2)
num2 = ((n+3)/2)-1

str1 = s_arr[0...num1]
str2 = s_arr[num2...n]

p s == s.reverse && str1 == str1.reverse && str2 == str2.reverse ? 'Yes' : 'No'