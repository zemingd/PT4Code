ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end
N = ary[0],to_i
ary.delete_at(0)
okane = ary.map{|item| 
if item[1]=="BTC" then
    item[0].to_i*3800000
else
    item[0]
end
}
print okane.inject(:+)