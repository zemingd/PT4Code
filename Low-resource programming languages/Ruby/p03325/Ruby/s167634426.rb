n = gets.chomp.to_i
a = gets.split.map(&:to_i)
sum = 0
a.each do |e|
  while e % 2 == 0
    sum += 1
    e /= 2
  end
end
puts sum
