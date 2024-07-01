n = gets.to_i
listed = {}
last = ""
ws = []
n.times{ |i|
  ws.push(gets.chomp)
}

ws.each { |w|
  p w
  p last
  if last == "" || (w[0] == last && listed[w].nil?)
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