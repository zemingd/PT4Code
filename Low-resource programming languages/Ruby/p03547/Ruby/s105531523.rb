score  = { A: 10, B: 11 , C: 12, E: 13, F: 14, G: 15 }

x, y = gets.split(' ').map(&:to_sym)

if score[x] > score[y]
  puts '>'
elsif score[x] < score[y]
  puts '<'
else
  puts '='
end
