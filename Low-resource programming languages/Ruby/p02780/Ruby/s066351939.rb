n,k = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

rs  = [0]
p.each_with_index do |v,i|
  rs.push p[i] if i == 0
  rs.push rs[i] + p[i] if i != 0
end

diff = n - k
search = (0..diff).to_a
result = []
search.each do |i|
  value = rs[i+k] - rs[i]
  result.push value
end

puts (result.max + k) / 2.to_f
