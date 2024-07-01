alp = 'abcdefghijklmnopqrstuvwxyz'.split('')
c = gets.chomp
nxt = 0
alp.each_with_index do |a, i|
  nxt = i + 1 if a == c
end
puts alp[nxt]