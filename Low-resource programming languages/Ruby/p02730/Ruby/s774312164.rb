s = gets.chomp.split("")
sr = s.reverse
flag = 0
n = s.length
#part1
if s != sr
    flag = 1
end

s1 = s[0..((n-1)/2)-1]
s1r = s1.reverse


#part2
if s1 != s1r
  flag = 1
end

s2 = s[((n+3)/2)-1..(n-1)]
s2r = s2.reverse

if s2 != s2r
  flag = 1
end

if flag == 1
  puts "No"
else
  puts "Yes"
end