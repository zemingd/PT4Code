N = gets.to_i
S = gets.chomp
alphs = ('A'..'Z').to_a
size = alphs.length
res = S.split('').map { |s| alphs[(alphs.index(s) + N) % size] }.join('')
puts res
