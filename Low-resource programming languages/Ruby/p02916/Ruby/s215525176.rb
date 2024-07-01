# N, A, B = gets.split(" ").map(&:to_i)
# S = gets.chomp
N = gets.to_i
A = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
C = gets.split(" ").map(&:to_i)

prev = 0
sum = 0
A.each do |a|
    sum += B[a - 1]
    sum += C[a - 2] if prev == a - 1 && a >= 2
    prev = a
end

puts sum
