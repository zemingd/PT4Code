n = gets.to_i
d = gets.split.map(&:to_i)

ret = 0
n.times do |index|
  (index + 1).upto(n - 1) do |i|
    ret += d[index] * d[i]
  end
end
puts ret