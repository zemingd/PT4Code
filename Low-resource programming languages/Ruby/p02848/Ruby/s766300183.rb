N = gets.chomp.to_i
S = gets.chomp.split("")

puts S.map {|c|
  ((c.ord - "A".ord + N) % 26 + "A".ord).chr
}.join("")