l, r = gets.split.map(&:to_i)

min = 2018
(l..r - 1).each do |i|
  (i + 1..r).each do |j|
    min = i * j % 2019 if min > i * j % 2019
  end
end
puts min
