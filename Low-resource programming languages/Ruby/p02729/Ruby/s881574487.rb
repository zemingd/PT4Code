N, M = gets.chomp.split(" ").map(&:to_i)
ans = 0

if N >= 2
    ans += N * (N - 1) / 2
end
if M >= 2
    ans += M * (M - 1) / 2
end

puts ans