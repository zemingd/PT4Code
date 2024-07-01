N, M = gets.chomp.split.map(&:to_i)
input = Array.new(M) { gets.chomp.split.map(&:to_i) }
min = Array.new
max = Array.new
input.each do |a, b|
  min.push(a)
  max.push(b)
end
puts (min.max..max.min).size
