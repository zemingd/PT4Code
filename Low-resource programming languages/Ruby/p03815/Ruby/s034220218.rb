x = gets.to_i

a = x / 11
b = x % 11

ans = 2 * a + (b == 0 ? 0 : b <= 6 ? 1 : 2)
puts ans
