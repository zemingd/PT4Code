ary = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
ary.sort!

if (ary[0] == ary[1] ||  ary[1] == ary[2]) && ary.uniq.count != 1 then
  puts "Yes"
else
  puts "No"
end