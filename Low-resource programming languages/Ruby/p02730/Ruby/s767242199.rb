s=gets.to_s
n=s.size.to_i
a=(n-3)/2.to_i
b=(n+5)/2.to_i


puts s.slice(0..a)==s.slice(b..n+1)? "YES":"No"
