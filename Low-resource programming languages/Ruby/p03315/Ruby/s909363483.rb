S = gets.chomp
ans = S.chars.inject(0){|s,sign| sign == '+' ? s + 1 : s - 1}
puts ans
