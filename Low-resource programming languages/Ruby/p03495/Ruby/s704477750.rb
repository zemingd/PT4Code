n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)
a.each {|x| h[x] += 1}

ans = 0
h.values.sort.reverse.drop(k).each {|x| ans+= x }
p ans
