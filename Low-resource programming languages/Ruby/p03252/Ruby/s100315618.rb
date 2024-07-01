s = gets.chomp
t = gets.chomp
h = {}
g = {}
s.size.times do |i|
  if h[s[i]]
    if h[s[i]].count(t[i]) == 0
      h[s[i]] << t[i]
    end
  else
    h[s[i]] = [t[i]]
  end
  if g[t[i]]
    if g[t[i]].count(s[i]) == 0
      g[t[i]] << s[i]
    end
  else
    g[t[i]] = [s[i]]
  end
end
puts h.flatten(-1) == g.invert.flatten(-1) ? 'Yes' : 'No'