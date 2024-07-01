n = gets.to_i
i = 1
rests = []
while a = gets do
    rest,point = a.split(" ")
    rests.push([rest.to_s,point.to_i,i])
    i = i + 1
end

hash = Hash.new{|h,k| h[k] = []}
rests = rests.sort_by{|r| r[0]}
rests.each do |r|
    hash[r[0].to_s].push([r[1],r[2]])
end

hash.each do |k,v|
    v = v.sort_by{|v| v}.reverse
    v.each do |v|
        puts v[1]
    end
end
