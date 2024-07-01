s=gets.to_s
n=s.size.to_i
a=(n-1)/2.to_i
b=(n+3)/2.to_i


puts s.slice(1..a)==s.slice(b..n)? "YES":"No"