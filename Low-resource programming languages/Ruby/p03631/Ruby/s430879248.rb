n = STDIN.gets.to_i
puts n.to_s.split('').reverse.join.to_i == n ? 'Yes' : 'No'