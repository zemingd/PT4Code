N = gets.to_i
Ss = readlines.map(&:strip)

h = Ss.each_with_object(Hash.new(0)){|s, h| h[s] += 1}
m = h.values.max
puts h.select{|k, v| v == m}.keys.sort