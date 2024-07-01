n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
a.each do |i|
  while i != 0 && i % 2 == 0
    count += 1
    i /= 2
  end
end

puts count
