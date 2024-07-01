cf = gets.chomp.split(//)
cs = gets.chomp.split(//)

cf += cs
ct = cf.reverse

if cf == ct
  puts "Yes"
else
  puts "No"
end