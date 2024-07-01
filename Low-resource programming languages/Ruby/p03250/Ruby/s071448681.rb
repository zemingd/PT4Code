inp = gets
num = inp.split.map &:to_i

num.sort!.reverse!
puts num[0] * 10 + num[1] + num[2]