n = gets.to_i
h = {}
n.times do
  i = gets.to_i
  h[i] ||= 0
  h[i] = h[i] == 1 ? 0 : 1
end
puts h.values.reduce(0){|a,e| a+=e}