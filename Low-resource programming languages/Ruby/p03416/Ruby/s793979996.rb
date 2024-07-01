a, b = gets.split.map(&:to_i)
count = 0

(a..b).each do |x|
  if x.to_s == x.to_s.reverse
    count += 1
  end
end

puts count