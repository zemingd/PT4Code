N, K = gets.chomp.split(" ").map(&:to_i)
i = 0

while(N >= 1)
    N = N/K
    i = i+1
end

puts ("#{i}")