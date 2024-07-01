A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

listA = [A, B, C, D, E].select { |x| x % 10 == 0 }
listB = [A, B, C, D, E].select { |x| x % 10 != 0 }.sort_by { |x| x % 10 }

listB = listB.map.with_index do |x, i|
  if i == 0
    x
  else
    10 * (1 + x / 10)
  end
end

ans = 0
ans += listA.inject(:+) || 0
ans += listB.inject(:+) || 0

puts ans
