n = gets.to_i
a = gets.split.map(&:to_i)
r = n.even?
first = a.shift
odds = a.select.with_index(1) { |_,i| i.odd? }
evens = a.select.with_index(1) { |_,i| i.even? }

if r
  puts (odds.reverse + [first] + evens).join(" ")
else
  puts (evens.reverse + [first] + odds).join(" ")
end
