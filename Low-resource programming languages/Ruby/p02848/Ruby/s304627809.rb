n = gets.to_i % 26
s = gets.chomp.chars
T = 'ABCDEFGHIJKLMNOPQRSTUWVXYZABCDEFGHIJKLMNOPQRSTUWVXYZ'.chars
ret = ''
s.each do |v|
  ret += T[(T.index(v) + n)]
end
puts ret

