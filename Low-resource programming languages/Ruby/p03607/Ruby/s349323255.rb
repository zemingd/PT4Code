N = gets.to_i

c = Hash.new(0)
N.times do
  d = gets.to_i
  c[d] += 1
end

result = 0
c.each do |_k, v|
  result += 1 if v.odd?
end

puts result