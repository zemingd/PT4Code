require 'pp'

N = readline.chomp.to_i
S = readline.chomp

idx = S.index('#')
if idx
  puts S[idx..-1].count('.')
else
  puts 0
end

