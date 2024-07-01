n, k, m = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
a = (m * n) - array.inject(:+)

if a < 0
    puts 0
elsif a < k
    puts a
else
    puts "-1"
end