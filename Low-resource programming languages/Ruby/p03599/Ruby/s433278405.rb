a,b,c,d,e,f = gets.chomp.split.map(&:to_i)
x = []
y = []
0.upto(f) do |i|
  0.upto(f) do |j|
    x << 100*a*i + 100*b*j if 100*a*i + 100*b*j <= f
    y << c*i + d*j if c*i + d*j <= f
  end
end
x.sort!.uniq!.delete(0)
y.sort!.uniq!
ans_q = 0
ans_s = 0
max_c = 0.0
x.each do |w|
  y.each do |s|
    if s + w <= f && w >= 100*s/e && s/(w+s).to_f > max_c
      ans_q = w+s
      ans_s = s
      max_c = s/(w+s)
    end
  end
end
puts ans_q,ans_s
