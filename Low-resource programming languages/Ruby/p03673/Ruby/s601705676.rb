n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

odds = a.map.with_index {|x, index| x if (index+1).odd? }.compact
evens = a.map.with_index {|x, index| x if !(index+1).odd? }.compact

# default n=odd
result = odds.reverse + evens
result=result.reverse if n.even?

puts result.join(' ')


