A, B, C, K = gets.chomp.split.map(&:to_i)

if K <= A then
    puts K
elsif K <= A + B then
    puts A
else
    puts A - (K - (A + B))
end