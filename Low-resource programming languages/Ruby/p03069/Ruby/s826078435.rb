require 'pp'

N = readline.chomp.to_i
S = readline.chomp

idx = S.index('#')

if idx
  sub = S[idx..-1] + '#'
  n_w = S[idx..-1].count('.')
  n_b = 0
  min = n_w + n_b
  sub[1..-1].each_char.with_index do |c,i|
    if c == '#'
      n_b += 1
      min = n_w + n_b if min > n_w + n_b
    else
      n_w -= 1
    end
  end
  #min = n_w + n_b if min > n_w + n_b
  puts min
else
  puts 0
end
