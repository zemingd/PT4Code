sum = gets.split(/\s/)
a = sum[0].to_i
b = sum[1].to_i
if a > b
  puts "a > b"
elsif a < b
  puts "a < b"
else
  puts "a == b"
end