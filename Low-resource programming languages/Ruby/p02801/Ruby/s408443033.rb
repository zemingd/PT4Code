N, K, M = gets.chomp.split(" ").map(&:to_i)
A= gets.chomp.split(" ").map(&:to_i)

if M * N - A.inject(:+) > K
    puts "-1"
elsif (M * N - A.inject(:+) > 0) && (M * N - A.inject(:+) < K)
    puts "#{M * N - A.inject(:+)}"
else 
    puts "0"
end
