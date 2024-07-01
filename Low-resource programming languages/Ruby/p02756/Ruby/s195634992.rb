s = gets.chomp
t = "" # ba s
u = "" # s ab
reversed = false

q = gets.to_i
q.times do
  query = gets.split
  if query[0] == "1"
    t, u = u, t
    reversed = !reversed
  else
    if query[1] == "1"
      t += query[2]
    else
      u += query[2]
    end
  end
end

s = s.reverse if reversed

puts t.reverse + s + u