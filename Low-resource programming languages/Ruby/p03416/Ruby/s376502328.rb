a, b = gets.chomp.split.map(&:to_i)
count = 0

(a..b).each do |x|
  y = x.to_s
  if y == y.reverse
    count += 1
  end
end

puts count