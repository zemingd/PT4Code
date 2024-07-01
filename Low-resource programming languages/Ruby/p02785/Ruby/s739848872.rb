n, k = gets.split().map(&:to_i)
h = gets.split().sort.slice(0,n-k)
puts h ? h.inject(0){ |sum, num| sum+= num.to_i } : 0