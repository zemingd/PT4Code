N = gets.to_i
S = gets.chomp.split("")

c = 1

(0..N-2).each {|i| c += 1 if S[i] != S[i+1]}

puts c