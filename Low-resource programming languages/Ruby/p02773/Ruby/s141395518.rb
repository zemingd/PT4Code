n = gets.to_i
hs = Hash.new(0)
m = 0
n.times do |_|
  s = gets.chomp
  hs[s] += 1
  m = hs[s] if hs[s] > m
end

res = []
hs.each do |k, v|
  res << k if v == m
end
puts res.sort!