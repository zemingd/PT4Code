n = gets.to_i
a = n%10
n/=10
b = n%10
n/=10
c = n%10
n/=10
d = n%10
n/=10
puts ((a==b && b==c) || (b==c && c==d)) ? "Yes" : "No"