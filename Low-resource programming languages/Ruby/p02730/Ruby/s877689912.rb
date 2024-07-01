S = gets.chomp.split("")
f = S.slice(0, (S.length-1)/2)
b = S.slice((S.length+3)/2-1..-1)
ans = (3<S.length and f==b) ? "Yes" : "No"
# p S,f,b
puts ans