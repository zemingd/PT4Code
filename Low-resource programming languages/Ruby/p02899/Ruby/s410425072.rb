n = gets.chomp!.to_i
#inp = [2, 3, 1]
inp = gets.split(" ").map(&:to_i)
hs = {}
for i in 0..n-1 do
  hs[i] = inp[i]
end

#p hs
hs = hs.sort_by{ |_, v| v }
#p hs

for j in 0..n-2 do
  print("#{hs[j][0]+1} ")
end
print("#{hs[n-1][0]+1}\n")