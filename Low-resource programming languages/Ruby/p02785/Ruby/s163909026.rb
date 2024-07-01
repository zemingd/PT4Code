n, k = gets.split.map(&:to_i)
if n <= k
    puts 0
    exit
end
puts gets.split.map(&:to_i).sort.reverse.drop(k).inject(:+)
