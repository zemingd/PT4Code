s = gets.rstrip
a = s.split("")
u = a.uniq

if u.length > 1 then
    puts "Yes"
else
    puts "No"
end