a, b = gets.split("\s").map(&:to_i)

print (a-b).abs % 2 == 0 ? [a, b].min + ((a-b).abs / 2) : 'IMPOSSIBLE'