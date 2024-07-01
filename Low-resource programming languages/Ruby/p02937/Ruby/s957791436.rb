s = gets.chomp
t = gets.chomp
h = {}
g = s.length
g.times do |i|
  if h.has_key?(s[i])
    h[s[i]] << i
  else
    h[s[i]] = [i]
  end
end
a = 0
w = -1
t.length.times do |i|
  if h.has_key?(t[i])
    u = h[t[i]][0]
    h[t[i]].each do |hti|
      if hti > w
        u = hti
        break
      end
    end
    a += (u - w) % g
    if (u-w)%g == 0
      a += g
    end
    w = u
  else
    puts "-1"
    exit
  end
end
puts a
