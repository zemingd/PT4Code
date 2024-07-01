a,b= gets.split.map(&:to_i)

# s = gets.chomp.chars.uniq
# puts gets.chomp.chars.uniq.size != 1 ? "Yes" : "No"
# r = a-b
c=a+b
puts c.even? ? c/2 : "IMPOSSIBLE"