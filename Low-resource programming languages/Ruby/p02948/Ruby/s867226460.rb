n,m = gets.split(" ").map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}
a,b = arr.transpose

perm = []
(1..n).to_a.permutation([m,n].min) do |i|
    perm.push i
end

res = []
perm.each do |i|
    sum = 0
    i.each_with_index do |val,key|
        sum += arr[val-1][1] if m >= key + arr[val-1][0]
    end
    res.push sum
end
p res.max.to_i