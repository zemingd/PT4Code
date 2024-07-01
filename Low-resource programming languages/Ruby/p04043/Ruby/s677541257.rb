A, B, C = gets.chomp.split(" ").map(&:to_i).sort

puts (A==B && A==5 && C==7) ? 'YES' : 'NO'
