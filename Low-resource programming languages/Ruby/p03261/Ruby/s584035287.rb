n = gets.to_i
ws = (0...n).map { gets.chomp }
puts ws.size == ws.uniq.size && (1...n).map {|i| ws[i-1][-1] == ws[i][0] }.all? { true } ? 'Yes' : 'No'