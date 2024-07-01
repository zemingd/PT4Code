n, k = gets.chomp.split(" ").map(&:to_i)
hash = [0] * (n + 1)
gets.chomp.split(" ").map(&:to_i).each{|a| hash[a] += 1}
aa = hash.select{|h| h != 0}.sort
puts aa.slice(0,[aa.length - k,0].max).inject(&:+)

#puts hash.select{|h| h != 0}.sort.slice(0,k).inject(&:+)
