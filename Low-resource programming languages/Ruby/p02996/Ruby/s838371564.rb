ary = Array.new
while line = $stdin.gets
ary << line.chomp.split.map{|item|item.to_i}
end
n = ary[0][0].to_i
ary.delete_at(0)
ary.sort!{|a,b| a[1] <=> b[1]}
timesum = 0
flag = 0
ary.each{|item|
    timesum += item[0]
    if timesum > item[1] then
        flag = 1
        break
    end
}
if flag == 0 then
    print "Yes"
else
    print "No"
end