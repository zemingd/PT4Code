a = gets.chomp.split("").map!{|i| i.to_s}
b = gets.chomp.split("").map!{|k| k.to_s}
a.sort!
b.sort!
if a.to_s < b.reverse.to_s
  puts "Yes"
else puts "No"
end
  