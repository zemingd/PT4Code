n = gets.to_i
arr = gets.chomp.split(' ')
if arr.uniq.size == 3
  puts "Three"
else
  puts "Four"
end