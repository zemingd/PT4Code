N = gets.to_i
ary = gets.split.map(&:to_i)
hash = {}
ary.each do |n|
    hash[n-1] = hash[n-1].to_i + 1
    hash[n] = hash[n].to_i + 1
    hash[n+1] = hash[n+1].to_i + 1
end
puts hash.max{|a, b| a[1]<=>b[1]}[1]