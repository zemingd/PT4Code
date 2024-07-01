n=gets.to_i
s=gets
s[n/2-1]+=' '
s=s.split
puts s[0]==s[1]?'Yes':'No'