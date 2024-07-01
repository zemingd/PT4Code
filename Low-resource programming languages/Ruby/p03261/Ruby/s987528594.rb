n = gets.to_i
listed = {}
last = ""
n.times{ |i|
  w = gets
  if last == "" || (w[0] == last && !listed[w])
  else
    print("No")
    print("\n")
    exit
  end
  listed[w] = true
  last = w[w.length - 1]
}

print("Yes")
print("\n")