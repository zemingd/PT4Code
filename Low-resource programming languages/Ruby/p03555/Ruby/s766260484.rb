c1 = gets.chomp.split("")
c2 = gets.chomp.split("")

result = "NO"
result = "YES" if c1.reverse.join == c2.join
puts result 