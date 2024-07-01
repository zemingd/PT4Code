n=gets.to_i
high=gets.chomp.split(" ").map(&:to_i)
max=high[0]
counter=1
for i in 1..n-1
 if max<=high[i]
 	max=high[i]
 	counter+=1
 end
end
print counter