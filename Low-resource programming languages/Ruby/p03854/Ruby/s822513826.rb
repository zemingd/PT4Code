s = gets.chomp.reverse
l = s.length
t = %w(eraser dreamer dream erase).map(&:reverse)
u = ""
now = ""
l.times do |i|
  now += s[i]
  t.each do |tt|
    if now == tt
      u += tt
      now = ""
    end
  end
end
puts u == s ? "YES" : "NO"
