def a_b(a,b)
  d = a/b
  r = a%b
  f = a*1.0/b
  d.to_s + " " + r.to_s + " " + f.to_s
end


input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
puts a_b(a,b)