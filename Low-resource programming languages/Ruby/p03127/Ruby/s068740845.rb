ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end
ary.delete_at(0)
ary = ary[0].map(&:to_i)
ary.sort!{|a, b| a <=> b }
min = ary[0]
t = ary.length
t.times{|t|
kari = ary[t] % min 
if (kari != 0 )and (min > kari) then
    min = kari
end
}
print min