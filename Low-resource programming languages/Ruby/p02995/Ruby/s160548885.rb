a, b, c, d = gets.chomp.split(" ").map(&:to_i)
saisyou = c.lcm(d)

#a-1以下
a_ans = (a-1)/c + (a-1)/d - (a-1)/saisyou
aa = a - 1 - a_ans
# b以下
b_ans = (b/c) + (b/d) - (b/saisyou)
bb =  b - b_ans
puts bb - aa