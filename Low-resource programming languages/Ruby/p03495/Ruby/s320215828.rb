n, k = gets.chomp.split(" ").map(&:to_i)
hash = [0] * (n + 1)
gets.chomp.split(" ").map(&:to_i).each{|a| hash[a] += 1}
puts hash.select{|h| h != 0}.sort.slice(0,k).sum
