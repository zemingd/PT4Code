a=["Sunny","Cloudy","Rainy"]
b=gets.chomp
c= a.index(b)==2 ? 0 : a.index(b)+1
puts a[c]
