n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).each.with_index(1).sort
r = m.times.map { gets.split.map(&:to_i).sort }

result = 0
while h.length > 0
  h_i, i = h.shift
  result += 1
  r.map{|a, b| a == i ? b : (b == i ? a : nil)}.compact.each do |j|
    h.delete_if{|_, k| j == k}
  end
end

puts result
