n, k = gets.split.map &:to_i
arr = Array.new
n.times do |i|
  a, b = gets.split.map &:to_i
  b.times do |j|
    arr << a
  end
end
puts arr.sort[k-1]