n = gets.chomp.to_i
cnt = 0
h = {}
n.times do
  s = gets.chomp.split("").sort.join("")
  if !h.has_key?(s)
    h[s] = 0
  else
    h[s] += 1
    cnt += h[s]
  end
end
puts cnt
