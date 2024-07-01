A, B, C, K = gets.split(" ").map(&:to_i)

if K < A
    puts K
elsif A <= K && K < (A + B)
    puts A
else
    puts 2 * A + B - K
end