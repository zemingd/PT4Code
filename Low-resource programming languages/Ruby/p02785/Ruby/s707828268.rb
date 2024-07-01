n, k = gets.chomp.split.map(&:to_i)
if n <= k
  puts "0"
  exit
end

h = gets.chomp.split.map(&:to_i).sort!
puts h[0...n - k].inject(:+)
