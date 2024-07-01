n = gets.to_i
x = gets.to_i
count = 0
x.size/2.times do |i|
  if x[i] != x[i+2]
    count+=1
  end
end
puts count