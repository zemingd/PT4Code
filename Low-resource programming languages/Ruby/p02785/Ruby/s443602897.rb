n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

hh = h.sort_by {|i| i * -1 }[k..-1]

puts hh ? hh.inject(&:+) : 0