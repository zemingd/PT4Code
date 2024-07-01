a, b = gets.split(' ')
puts (a..b).to_a.select{|n| n == n.reverse}.count
