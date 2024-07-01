gets
n = gets.chomp.split(" ").uniq.length
if n == 3 then
  puts "Three"
else
  puts "Four"
end