n = gets.to_i
s = n.times.map{gets.chomp}
h = Hash.new(0)
max=0
s.each do |string|
  h[string] += 1
  max = h[string] if max<h[string]
end

puts h.select { |k,v| v==max }.keys.sort