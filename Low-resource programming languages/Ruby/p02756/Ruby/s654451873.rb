s = gets.chomp.split('')
q = gets.to_i
for i in 1..q
  query = gets.split
  s.reverse! if query[0].to_i == 1
  s.unshift(query[-1]) if query[0].to_i == 2 && query[1].to_i == 1
  s.push(query[-1]) if query[0].to_i == 2 && query[1].to_i == 2
end
puts s.join
