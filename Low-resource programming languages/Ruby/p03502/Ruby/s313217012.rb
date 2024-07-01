a=gets.chomp
b=0
for i in 0..(a.length-1)
  b+=a[i].to_i
end
puts a.to_i%b==0 ? "Yes" : "No"
