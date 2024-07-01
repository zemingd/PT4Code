a = gets.chomp.split("").map!{|i| i.to_s}
b = gets.chomp.split("").map!{|k| k.to_s}
a.sort!
b.sort!
if a.join < b.reverse.join
  puts "Yes"
else puts "No"
end
