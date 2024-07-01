# N = gets.chomp.to_i
X, Y, Z, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map { |e| - e.to_i }
B = gets.chomp.split.map { |e| - e.to_i }
C = gets.chomp.split.map { |e| - e.to_i }

AB = []
A.each.with_index do |a, i|
  B.each.with_index do |b, j|
    AB << a + b
  end
end
AB.sort!

AB = AB.first(K)
C.sort!

arr = []
AB.each do |ab|
  C.each do |c|
    arr << ab + c
  end
end
arr.sort!

arr.first(K).each do |e|
  p(-e)
end