k = gets.to_i
evens = []
odds = []

1.upto(k) do |i|
  i % 2 == 0 ? evens.push(i) : odds.push(i)
end

puts evens.size * odds.size