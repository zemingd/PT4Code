n,d = gets.strip.split.map(&:to_i)
array = []
while num = gets
  array << num.chomp.split
end
sum = 0
for i in 0..n-2
  for k in i+1..n-1
    kai = 0
    j = 0
    while j < d do
      kai += (array[i][j].to_i-array[k][j].to_i)**2
      j += 1
    end
    if Math.sqrt(kai).floor == Math.sqrt(kai)
      sum += 1
    end
  end
end
puts sum