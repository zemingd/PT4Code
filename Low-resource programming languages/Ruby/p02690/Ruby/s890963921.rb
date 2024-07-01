X=gets.to_i
def a(x)
  Math.sqrt(x)
end
n = a(a(a(a(a(X))))).ceil
print(n," ")
nn = n**5
if X == nn
  puts 0
elsif X == nn + 1
  puts "-1"
elsif X == nn - 1
  puts 1
end
