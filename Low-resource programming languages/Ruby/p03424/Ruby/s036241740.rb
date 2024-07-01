n = gets.to_i
ar = gets.chomp.split
if ar.uniq.count == 3
  puts "Three"
else
  puts "Four"
end
