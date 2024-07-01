n = gets.to_i
str = gets
harf_n = n/2
result = a[0, harf_n] == a[harf_n, n] ? "Yes" : "No"
print("#{result}")