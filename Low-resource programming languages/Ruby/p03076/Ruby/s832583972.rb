A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

ans = 10**9
[A, B, C, D, E].permutation(5).each do |dishes|
  t = dishes[0]
  dishes[1..-1].each do |dish|
    t += 10 - t % 10 if t % 10 != 0
    t += dish
  end
  ans = [ans, t].min
end
puts ans