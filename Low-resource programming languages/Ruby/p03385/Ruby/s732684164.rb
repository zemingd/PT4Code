s = gets
ary = [s[0], s[1], s[2]]
ary.sort!

if ary == ["a", "b", "c"]
  puts "Yes"
else
  puts "No"
end