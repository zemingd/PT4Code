N = gets.chop.to_i
S = gets.chop

puts [
  (S[/(#.*$)/, 0].nil?) ? 0 : S[/(#.*$)/, 0].count('.'), 
  (S[/(^.*\.)/, 0].nil?) ? 0 : S[/(^.*\.)/, 0].count('#')].min