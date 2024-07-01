line = gets.split(' ').map(&:to_i)

line2 = line.sort!

print line2[0] + line2[1]