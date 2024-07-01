N = gets.to_i
h = Hash.new(0)

(0..N-1).each { |i|
  s = gets.chomp
  h[s.to_sym] += 1
}

h.each { |k, v| puts k if v == h.values.max }