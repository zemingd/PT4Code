
s=gets.chomp.split("").map(&:to_s)
t=gets.chomp.split("").map(&:to_s)
s.sort!
t.sort!
t=t.reverse
s_sort=s.join("")
t_sort=t.join("")
#p s_sort
#p t_sort

if s_sort<t_sort
    puts "Yes"
else
    puts "No"
end