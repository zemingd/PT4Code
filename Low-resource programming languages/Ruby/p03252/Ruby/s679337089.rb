#気づいたこと aab→abcはできない
s = gets.chomp
t = gets.chomp

table = s.split("").map.with_index{|c, i| [s[i],t[i]].sort}

ans = "Yes"
table.group_by{|item| item[0]}.map{|ary| ary[1].uniq}.each do |ary|
  ans = "No" if ary.length > 1
end

puts ans
