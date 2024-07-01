s,t = 2.times.map{gets.chomp.split("").sort!}
u,v = s.size,t.size
for i in 0..[u-1,v-1].min
  if s[i] < t[v-1-i]
    puts "Yes"
    exit
  elsif s[i] > t[v-1-i]
    puts "No"
    exit
  end
end
if u < v
  puts "Yes"
else
  puts "No"
end