s = gets.chomp.split(" ")
tmpZan = s[0].to_i - s[1].to_i
puts (s[2].to_i - tmpZan).to_s
s = gets.chomp.split(" ")
tmpZan = s[0].to_i - s[1].to_i
if tmpZan >= s[2].to_i
  puts ("0")
else
  puts (s[2].to_i - tmpZan).to_s
end

