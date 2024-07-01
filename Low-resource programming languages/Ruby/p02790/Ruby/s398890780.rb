i,t = gets.split(" ")
a =[]
 a << i*t.to_i
 a << t*i.to_i
puts a.sort[0]