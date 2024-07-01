n = gets.to_i
xs = gets.split(" ").map(&:to_i)
sorted = xs.sort

index1 = xs.size / 2
index2 = index1 - 1
median1 = sorted[index2]
median2 = sorted[index1]

xs.each do |x|
  if x <= median1
    puts median2
  else
    puts median1
  end
end