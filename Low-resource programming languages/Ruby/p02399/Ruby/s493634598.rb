tmp = gets.chomp.split.map(&:to_i)
a = tmp[0]
b = tmp[1]
answer = []
answer.push(a/b)
answer.push(a%b)
answer.push(a/b.to_f+0.000001)
puts answer.join(' ')