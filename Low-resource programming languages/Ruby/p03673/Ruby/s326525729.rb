n = gets.to_i
as = gets.split.map(&:to_i)
evens = []
odds  = []
as.map.with_index { |e, i| i.even? ? evens << e : odds << e }
if n.odd?
  puts (evens.reverse + odds).join(" ")
else
  puts (odds.reverse + evens).join(" ")
end
