N, M = gets.split.map(&:to_i)
ary = []
N.times do
  ary += gets.split.map(&:to_i)[1..-1]
end
puts (1..M).map{|m| ary.count(m)}.count(N)