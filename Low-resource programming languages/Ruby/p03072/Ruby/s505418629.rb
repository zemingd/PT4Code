N = gets.to_i
H = gets.split.map(&:to_i)

kabe = H[0]
count = 1

for i in 1..(N-1)
 if kabe <= H[i]
  count += 1
  kabe = H[i]
 end
end
 
puts(count)