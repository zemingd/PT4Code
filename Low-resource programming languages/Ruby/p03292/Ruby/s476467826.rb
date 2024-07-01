a = gets.split.map(&:to_i)

a.sort!
print a[2] - a[0], "\n"
