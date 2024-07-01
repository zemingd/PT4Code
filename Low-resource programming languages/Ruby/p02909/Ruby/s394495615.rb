n = gets.chomp.to_s
a = ["Sunny","Cloudy","Rainy"]
for i in 0..2
  if n == a[i]
    puts a[(i+1)%3]
  end
end