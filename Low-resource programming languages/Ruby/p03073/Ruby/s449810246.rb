S = gets.chomp
N = S.size

s = S.to_i(2)

a = "#{ '01' * (N / 2) }#{ '0' if N.odd? }".to_i(2)
b = "#{ '10' * (N / 2) }#{ '1' if N.odd? }".to_i(2)

puts [a, b].map {|i| (i ^ s).to_s(2).count('1') }.min
