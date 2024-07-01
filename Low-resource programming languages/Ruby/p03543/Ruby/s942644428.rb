ary = gets.chomp.chars.map &:to_i
if (ary[0] == ary[1] && ary[1] == ary[2]) || (ary[1] == ary[2] && ary[1] == ary[3])
  puts "Yes"
else
  puts "No"
end