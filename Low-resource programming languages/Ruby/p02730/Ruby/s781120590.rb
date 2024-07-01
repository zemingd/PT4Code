s=gets.to_s
n=s.size.to_i
a=(n-3)/2.to_i
b=(n+1)/2.to_i
c=(n-1).to_i

puts s.slice(0..a)==s.slice(b..c)? "Yes":"No"