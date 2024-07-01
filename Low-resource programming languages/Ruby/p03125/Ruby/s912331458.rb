ab = gets.chomp.split(" ")
if ab[1].to_i % ab[0].to_i == 0
  puts ab[0].to_i + ab[1].to_i
else
  puts ab[1].to_i + ab[0].to_i
end