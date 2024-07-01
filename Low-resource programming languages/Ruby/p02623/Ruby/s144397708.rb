class Array
  def cumsum(s = 0); map{|k| s += k } end
end

n, m, k = gets.to_s.split.map{|t|t.to_i}
a = gets.to_s.split.map{|t|t.to_i}
b = gets.to_s.split.map{|t|t.to_i}

ac = a.cumsum.unshift(0)
bc = b.cumsum.unshift(0)

j = m
ans = 0
ac.each_with_index do |t, i|
  while t + bc[j] > k && j > 0
    j -= 1
  end
  ans = [ans, i + j].max if t + bc[j] <= k
end

puts ans