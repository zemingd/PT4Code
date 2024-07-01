N,K = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp

ar = S.split("")
ar[K-1] = ar[K-1].downcase

puts ar.join