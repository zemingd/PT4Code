a = gets.split(//).map(&:to_i)
b = a.reverse

result = "No"
result = "Yes" if a == b
puts result