X, Y, Z, K = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
C = gets.split(" ").map(&:to_i)
A.sort!.reverse!
B.sort!.reverse!
C.sort!.reverse!

ABC = []
A.each_with_index do |a, ai|
  B.each_with_index do |b, bi|
    C.each_with_index do |c, ci|
      next if (ai + 1) * (bi + 1) * (ci + 1) > K
      ABC << a + b + c
    end
  end
end
ABC.sort!.reverse!
K.times do |i|
  puts ABC[i]
end
