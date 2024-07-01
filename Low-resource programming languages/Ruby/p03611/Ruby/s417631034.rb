N = gets.to_i
ary = gets.split.map(&:to_i)
hash = {}
ary.each do |n|
    hash[n] = hash[n].to_i + 1
end
l = hash.sort
max_vals = {}
l.each_with_index do |a, i|
    pre = i==0 ? 0 : l[i-1][1]
    post = i==l.size-1 ? 0 : l[i+1][1]
    max_vals[l[i][0]] = pre + l[i][1] + post
end
puts max_vals.max{|a, b| a[1]<=>b[1]}[1]