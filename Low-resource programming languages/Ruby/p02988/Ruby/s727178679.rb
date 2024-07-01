n = gets.to_i
a = gets.split.map(&:to_i)

p (n-2).times.map{|i| a[i+1]==a[i..i+2].sort[1]}.count(true)
