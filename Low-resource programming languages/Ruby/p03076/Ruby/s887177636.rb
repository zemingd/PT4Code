dishes = []
5.times do |i|
  dishes << gets.chomp.to_i
end
min = 10 
total = 0
dishes.each do |d|
  min = (d % 10 > 0 && d % 10 < min) ? d % 10 : min
  total += d + (d % 10 > 0 ? (10 - d % 10) : 0)
end
puts total - (10 - min)
