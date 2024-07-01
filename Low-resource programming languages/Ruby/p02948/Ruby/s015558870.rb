n,m = gets.split(" ").map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}
#a,b = arr.transpose

hash = {}
res = 0
arr.each do |i|
    hash[i[0]] = [] if !hash.key?(i[0])
    hash[i[0]].push(i[1])
end
hash.each{|key,val| val.sort!}


(1..m).to_a.each do |i|
    max = [0, 0] #day, val
    (1..i).to_a.each do |j|
        max = [j,hash[j].last()]   if hash.key?(j) && !hash[j].empty? && hash[j].last > max[1]
    end
    res += hash[max[0]].pop if max[0] != 0
end

p res