n = gets.to_i
a = Array.new(n) { gets.to_i }
h = Hash.new(0)

a.each { |i| h[i] += 1 }

puts h.values.select(&:odd?).size