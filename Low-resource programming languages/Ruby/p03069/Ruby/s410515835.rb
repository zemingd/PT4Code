N = gets.to_i
S = gets.chomp

bi = S.index('#')

if bi
  bn = S[bi,N-bi].count('#')
  wn = S[bi,N-bi].count('.')
  if wn.nil?
    puts 0
  else
    puts [bn,wn].min
  end
else
  puts 0
end