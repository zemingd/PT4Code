n = gets.chomp.to_i
pn = gets.chomp.split(" ").map(&:to_i)
num = 0
minimum = n
for i in 0..n-1 do
  num += 1 if pn[i] <= minimum
  minimum = pn[i] if pn[i] < minimum
  break if minimum == 1
end
print num