arr = gets.chomp.split("\s")
a, b = arr[0].to_i, arr[1].to_i

s1 = a / b
s2 = a % b
s3 = (a / b.to_f).round(8)

print(s1,"\s", s2, "\s", s3, "\n")