ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end
ary.delete_at(0)
ary.map!{|item| item[0].to_i }
ary.sort!{|a,b| b <=> a}
ary[0] = ary[0]/2
print ary.inject(:+)