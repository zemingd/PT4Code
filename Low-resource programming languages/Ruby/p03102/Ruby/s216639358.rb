N, M, C = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
N.times do
  a = gets.split.map(&:to_i)

  count += 1 if a.zip(b).map{|c| c.inject(:*)}.inject(:+) + C > 0
end

puts count