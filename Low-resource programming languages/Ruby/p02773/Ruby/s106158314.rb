s = gets.to_i.times.map{gets.chomp}
h = Hash.new(0)
max = 0
s.each do |_s|
  h[_s] += 1
  max = h[_s] if max < h[_s]
end

puts h.select { |k, v| v == max }.keys.sort