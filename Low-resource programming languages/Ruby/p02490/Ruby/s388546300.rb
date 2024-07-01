b=gets.split
while b[0].to_i+b[1].to_i!=0
puts b[0].to_i<b[1].to_i ? b[0]+" "+b[1]: b[1]+" "+b[0]
b=gets.split
end