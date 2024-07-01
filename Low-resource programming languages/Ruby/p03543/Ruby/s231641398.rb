s = gets.chomp.split('')
t=s.uniq
if t.length > 2 || s[1]!=s[2]
    puts "No"
elsif t.length == 2 && s[0]==s[3]
    puts "No"
else
    puts "Yes"
end