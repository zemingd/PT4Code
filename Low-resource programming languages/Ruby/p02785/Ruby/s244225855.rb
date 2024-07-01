n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

if n <= k
    puts 0
else 
    puts h.sort.shift(h.length - k).inject(:+)
end