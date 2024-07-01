n = gets.to_i
a = gets.split.map(&:to_i).uniq.sort
d = [a.shift]
count = 1

a.each do |e|
  next if d.any? { |i| e % i == 0 }

  d << e
  count += 1
end

puts count