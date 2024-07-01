n = gets.to_i
t = []
n.times do |i|
  t << gets.to_i
end

res = t.max
t.each do |t_i|
  c_res = res
  while res % t_i != 0 do
    res += c_res
  end
end

puts res
