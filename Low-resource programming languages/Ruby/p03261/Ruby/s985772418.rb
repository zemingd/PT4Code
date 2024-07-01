n = gets.to_i
w = n.times.map{ gets.strip }
flag = true
if w == w.uniq
    (n-1).times{ |i| flag = false if w[i][-1] != w[i+1][0] }
else
    flag = false
end
puts flag ? "Yes" : "No"