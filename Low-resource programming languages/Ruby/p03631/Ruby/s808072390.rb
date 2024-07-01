a = gets.split(//).map(&:to_i)
b = a.reverse

result = "No"
result = "Yes" if a[0] == a[2]
puts result