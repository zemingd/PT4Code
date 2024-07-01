s = gets.chomp
#s_i = s.to_i
n = s.length
h = 1
for i in 1..(n-1)
  if i%2 == 0
    h += 10**i
  end
end
h_s = h.to_s
if h_s.length != n
  h_s = "0" + h_s
end
kazu = 0
for i in 0..(n-1)
  kazu += 1 if h_s[i] != s[i]
end
if n-kazu > kazu
  puts kazu
else
  puts n-kazu
end
