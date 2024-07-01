n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

odds = a.map.with_index {|x, index| x if index.odd? }.compact
evens = a.map.with_index {|x, index| x if !index.odd? }.compact

result = (odds.reverse + evens).join(' ')
result=result.reverse if n.odd?
puts result

