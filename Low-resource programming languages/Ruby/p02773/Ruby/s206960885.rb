s = gets.to_i.times.map{gets.chomp}
h = {}
max = 0
s.each do |_s|
  c = s.count(_s)
  h[_s] = c
  max = c if max < c
end

puts h.select { |k, v| v == max }.keys.sort