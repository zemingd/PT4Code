N,M,C = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
T = []

N.times do |i|
  a_i = gets.split.map(&:to_i)
  T << i if a_i.map.with_index {|a, j| a*(b[j])}.inject(:+) + C > 0
end

puts T.size