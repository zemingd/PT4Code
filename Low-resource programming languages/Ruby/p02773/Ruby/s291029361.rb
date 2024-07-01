n = gets.to_i
h = {}
max = 0
for i in 0..(n-1)
  s = gets.chomp
  if h[s.to_sym]
    h[s.to_sym] += 1
    max = h[s.to_sym] if h[s.to_sym] > max
  else
    h[s.to_sym] = 1
  end
end
a = h.find_all {|k, v| v == max}
puts a.to_h.keys.sort
