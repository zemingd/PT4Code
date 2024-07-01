score  = { A: 10, B: 11 , C: 12, D: 13, E: 14, F: 15 }

x, y = gets.split(' ').map(&:to_sym)

if score[x] > score[y]
  puts '>'
elsif score[x] < score[y]
  puts '<'
else
  puts '='
end
