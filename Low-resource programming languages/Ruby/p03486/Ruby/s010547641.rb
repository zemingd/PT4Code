s = gets.strip.split("")
t = gets.strip.split("")
min_s = s.sort.join
max_t = t.sort.reverse.join

if max_t > min_s
    puts "Yes"
else
    puts "No"
end
