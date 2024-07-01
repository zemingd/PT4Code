count = 0
while line = gets
n = line.chomp
break if n == "0"
count += 1
puts "Case " + count.to_s + ": " + n
end