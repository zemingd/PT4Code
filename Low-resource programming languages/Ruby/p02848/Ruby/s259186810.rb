n = gets.to_i
s = gets.chomp

alp = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars

ans = ''

s.chars.each do |ss|
  ans += alp[(alp.index(ss) + n) % 26]
end
puts ans