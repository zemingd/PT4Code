n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
if arr.uniq.size == 3
  puts "Three"
else
  puts "Four"
end