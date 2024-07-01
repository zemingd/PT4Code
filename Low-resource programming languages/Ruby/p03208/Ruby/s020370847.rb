ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end
N = ary[0][0].to_i
K = ary[0][1].to_i
ary.delete_at(0)
ary.map!{|item| item[0].to_i }
ary.sort!{|a,b| a <=> b}
kai = ary[K-1]-ary[0]
t = N-K+1
t.times{|num|
if ary[num+K-1]-ary[num] < kai then
kai = ary[num+K-1]-ary[num]
end
}
print kai