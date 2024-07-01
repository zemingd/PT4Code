def d(n)
  if n < 0
    return -1 * n
  else
    return n
  end
end

inp = gets.split(" ")  
a = inp[0].to_i
b = inp[1].to_i
c = inp[2].to_i
d = inp[3].to_i

if d(c-a) <= d
  print("Yes")
  print("\n")
elsif d(b-a) <= d && d(c-b) <= d
  print("Yes")
  print("\n")
else
  print("No")
  print("\n")
end
