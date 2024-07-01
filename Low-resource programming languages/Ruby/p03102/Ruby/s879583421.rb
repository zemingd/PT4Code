ary = Array.new
while line = $stdin.gets
  ary << line.chomp.split
end
m = ary[0][1].to_i
c = ary[0][2].to_i
ary.delete_at(0)
b = ary[0]
ary.delete_at(0)
kai = 0
ary.each{|item|
f = Array.new
m.times{|t|
f.push(b[t].to_i*item[t].to_i)
}
if f.inject(:+) + c > 0 then
    kai = kai + 1
end
}
  print kai