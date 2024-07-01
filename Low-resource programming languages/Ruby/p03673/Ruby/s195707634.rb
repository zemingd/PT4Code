n = gets.to_i
as = gets.split.map(&:to_i)
evens = []
odds  = []
as.map { |e| e.even? ? evens << e : odds << e }
if n.even?
  puts (evens.reverse + odds).join(" ")
else
  puts (odds.reverse + evens).join(" ")
end
