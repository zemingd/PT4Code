S = gets.chomp
T = gets.chomp
h,g = {},{}
(0...S.size).each{ |i|
  s,t, = S[i],T[i]
  if h[s] && h[s] != t
    puts "No"; exit
  end
  if g[t] && g[t] != s
    puts "No"; exit
  end
  h[s] = t; g[t] = s
}
puts "Yes"