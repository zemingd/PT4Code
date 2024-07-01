N = gets.chop.to_i
S = gets.chop

puts [
  (S[/(#.*$)/, 0].include?('#')) ? S[/(#.*$)/, 0].count('.') : 0, 
  (S[/(^.*\.)/, 0].include?('.')) ? S[/(^.*\.)/, 0].count('#') : 0 ].min