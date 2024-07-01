n,k = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

diff = n - k
search = (0..diff).to_a
result = 0

search.each do |i|
  value = p[i..(i+k-1)].inject(:+)
  result = value if value > result
end

puts (result + k) / 2.to_f
