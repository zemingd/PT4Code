ary = gets.split(" ").map(&:to_i)

a = ary[0] / ary[1]
b = ary[0] % ary[1]
c = ary[0].to_f / ary[1].to_f
ans = [a, b, c]

puts ans.join(" ")