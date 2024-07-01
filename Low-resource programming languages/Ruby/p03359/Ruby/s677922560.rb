a, b = gets.chop.split.map(&:to_i)
count = 0
(1..a).each do |i|
  (1..31).each do |j|
    if i != a && j != b
      count += 1
    else
      break
    end
  end
end
puts count.to_s
