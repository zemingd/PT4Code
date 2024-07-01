n = gets.chomp.to_i
pn = gets.chomp.split(" ").map(&:to_i)
num = 0
exist_small = false
for i in 0..n-1 do
  exist_small = false
  for j in 0..i do
    exist_small = true if pn[i] > pn[j]
    num += 1 if j == i && !exist_small
  end
end
print num