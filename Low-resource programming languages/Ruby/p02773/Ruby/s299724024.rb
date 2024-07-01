n = gets.to_i
v = {}
mx = 0
n.times {
  s = gets.chomp
  if v.key?(s)
    v[s] += 1
  else
    v[s] = 1
  end
  if v[s] > mx
    mx = v[s]
  end
}

v.sort.each do |x, y|
  if y == mx
    puts x
  end
end
