i, a = gets.chomp.split.map(&:to_i)
b = i - 1
c = a - 1
q = [i, a, b, c]
q.sort!.reverse!
i = q.slice(0..1)
puts i.sum