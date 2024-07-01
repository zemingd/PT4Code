num = gets.split.map(&:to_i)
a = num[1].div(num[2]) - num[0].div(num[2])
b = num[1].div(num[3]) - num[0].div(num[3])
c = num[1].div(num[2].lcm(num[3])) - num[0].div(num[2].lcm(num[3]))
puts (num[1] - num[0]) - (a +b) + c + 1