X, Y, Z, K = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
C = gets.split(" ").map(&:to_i)

arr = []
A.each do |a|
  B.each do |b|
    C.each do |c|
      arr << a + b + c
    end
  end
end
arr.sort!
arr.reverse!
arr.each_with_index do |x, ix|
  break if ix >= K
  puts x
end

