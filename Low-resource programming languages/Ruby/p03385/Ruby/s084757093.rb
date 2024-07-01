s = gets.chomp.split("")
list = "abc".split("")
list.delete(s[0])
list.delete(s[1])
list.delete(s[2])
if list.size == 0
  puts "Yes"
else
  puts "No"
end