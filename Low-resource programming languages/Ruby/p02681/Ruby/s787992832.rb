a=gets.chomp.split("")
b=gets.chomp.split("")
b.delete_at(-1)
if a==b
  puts "Yes"
else puts "No"
end
