S=gets.chomp

f = '1'
a = b = 0
S.each_char do |c|
  c == f ? a += 1 : b += 1
  f == '1' ? f = '0' : f = '1'
end

p [a,b].min
