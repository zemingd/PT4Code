a, b, c, d = gets.chomp.split(' ').map(&:to_i)

while a > 0 && c > 0
  a -= d
  c -= b
end

c <= 0 ? print('Yes') : print('No')
