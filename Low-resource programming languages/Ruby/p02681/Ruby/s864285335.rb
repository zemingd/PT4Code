s = gets.chomp
t = gets.chomp
t = t[0,(t.size)-1]
message = s==t ? "Yes" : "No"
print(message)