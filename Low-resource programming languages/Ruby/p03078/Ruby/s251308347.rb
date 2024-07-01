X, Y, Z, K = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
C = gets.split(" ").map(&:to_i)

AB = []
A.each do |a|
  B.each do |b|
    AB << a+b
  end
end

AB.sort!.reverse!
AB = AB[0...K]
ABC = []
AB.each do |ab|
  C.each do |c|
    ABC << ab + c
  end
end
ABC.sort!.reverse!
K.times do |i|
  puts ABC[i]
end
