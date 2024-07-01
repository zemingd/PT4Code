h, w = gets.chomp.split.map(&:to_i)

possible = 0
possible_odd = (w/2)+1
possible_even = w/2

if h.odd?
  possible = ((possible_odd + possible_even) * (h/2) + possible_odd)
else
  possible = (possible_odd + possible_even) * (h/2)
end

puts possible