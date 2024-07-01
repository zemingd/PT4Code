s = gets.chomp
q = gets.to_i
head = ""
tail = ""
rev = 0
q.times do
  t, f, c = gets.chomp.split
  if t == "1"
    rev = 1 - rev
  else
    if f.to_i - rev == 1
      head += c
    else
      tail += c
    end
  end
end
if rev == 0
  s = head.reverse + s + tail
else
  s = (tail + s).reverse + head
end
puts s
