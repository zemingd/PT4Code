n = gets.to_i
ws = n.times.map { gets.chomp }

satisfied = (n - 1).times.all? do |i|
  ws[i][-1] == ws[i + 1][0]
end

puts ws.uniq.count == n && satisfied ? 'Yes' : 'No'
