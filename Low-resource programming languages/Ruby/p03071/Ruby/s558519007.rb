x = STDIN.gets().split(" ")
a = x[0].to_i
b = x[1].to_i

ret = 0
for i in 1..2
  if a >= b
    ret += a
    a -= 1
  else
    ret += b
    b -= 1
  end
end

puts ret
