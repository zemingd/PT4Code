n=gets.to_i
a=Array.new(n)
a=gets.split().map(&:to_i)
puts a.reverse.join(" ")