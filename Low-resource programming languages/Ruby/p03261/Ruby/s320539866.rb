n = gets.to_i
ws = n.times.map { gets.chomp }
(n-1).times {|i|
  unless ws[i][-1] == ws[i+1][0]
    puts 'No'
    exit 0
  end
}
puts ws.uniq.size == n ? 'Yes' : 'No'