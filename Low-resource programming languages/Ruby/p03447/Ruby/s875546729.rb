lines = readlines.join.split.map(&:to_i)
range = lines.shift
ary = []
2.times do 
    ary << lines.slice!(0..range-1)
end
ans = []
for i in 0..range do
    ans << (ary[0].slice(0..i)).push(ary[1].slice(i..range-1))
end
ans.map!{|t| t.flatten}
ans.map!{|f| f.sum }
p ans.max
