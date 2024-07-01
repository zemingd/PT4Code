input = gets.chomp!
strings = input.split(" ")

count5 = strings.count("5")
count7 = strings.count("7")

result = count5 == 2 && count7 == 1 ? "YES" : "NO"

print result