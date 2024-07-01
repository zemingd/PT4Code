a=[]
b=%w[1 2 3]
2.times do
  a<<gets.chomp.to_s
end
puts b-a