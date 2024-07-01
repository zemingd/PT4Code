ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end
ary.delete_at(0)
ary = ary[0].map(&:to_i)
ary.sort!{|a, b| a <=> b }
min = ary[0]
t = ary.length
flag = 0
until (min == 1) or (flag == 1)do
lastloop = min
t.times{|k|
kari = ary[k] % min 
if (kari != 0 )and (min > kari) then
    min = kari
end
}
  if lastloop == min then flag = 1 end
  end
print min