tmp = gets.chomp.split.map(&:to_i)
a = tmp[0]
b = tmp[1]
answer = []
c = 10**10*a

answer.push(a/b)
answer.push(a%b)
answer.push(c/b/10**6.to_f.round(6))

puts answer.join(' ')