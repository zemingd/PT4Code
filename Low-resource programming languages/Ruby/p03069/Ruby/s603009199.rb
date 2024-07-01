require 'pp'

N = readline.chomp.to_i
S = readline.chomp

idx = S.index('#')
n0 = S.count('#')
if idx
  n1 = S[idx..-1].count('.')
  puts [n0,n1].min
else
  puts 0
end
