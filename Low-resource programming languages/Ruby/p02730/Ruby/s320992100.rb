str = gets.chomp
flag = true

flag = false if str != str.reverse
len = str.size
new_str = str.slice(0, len / 2)
flag = false if new_str != new_str.reverse

puts flag ? "Yes" : "No"
