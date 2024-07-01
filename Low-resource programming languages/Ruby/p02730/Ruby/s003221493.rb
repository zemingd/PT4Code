def is_kaibun(s)
  # p s
  n = s.size
  (n/2).times.all? do |i|
    s[i] == s[n - 1 - i]
  end
end

s = gets.chomp
n = s.size
t = s[0,n/2]
u = s[n/2+1,n/2]

# p [s,t,u]

ans = is_kaibun(s) && is_kaibun(t) && is_kaibun(u)
puts ans ? "Yes" : "No"
