A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i

menue = [A, B, C, D, E]
ans = 643
menue.permutation(5) { |a, b, c, d, e|
  m = [a, b, c, d, e]
  t = 0
  i = 0
  while i < 5
    while t % 10 != 0
      t += 1
    end
    t += m[i]
    i += 1
  end
  ans = [ans, t].min
}

puts ans
