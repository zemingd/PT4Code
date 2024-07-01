n = gets.to_i
s = Array.new(n+1)
s[0] = 0

gets.split.each do |e|
    e = e.to_i
    s[e] = s[e-1] + 1 if s[e-1] 
end

p n - s.compact.last