n = gets.to_i

p = gets.split.map(&:to_i)

count = 0
(1..n).each do |i|
  (1..n).each do |k|
    if p[k] > p[i]
      count += 1
    end
  end
end

puts count