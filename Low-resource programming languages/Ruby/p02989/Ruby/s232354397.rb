require 'pp'

N = readline.chomp.to_i
D = readline.chomp.split.map(&:to_i)
D.sort!
puts (D[N/2]-D[N/2-1])
