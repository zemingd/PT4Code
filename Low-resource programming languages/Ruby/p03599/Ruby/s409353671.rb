A, B, C, D, E, F = gets.split.map(&:to_i)
rate, sugar, water = 0, 0, 0
N=F/100
ws = []
ss = []
(N+1).times do |x|
  (N+1).times do |y|
    break if x+y > N
    w = A*x*100+B*y*100
    ws << w if w <= F  
  end
end
(F+1).times do |x|
  (F+1).times do |y|
    break if x+y > F
    s = C*x+D*y
    ss << s if s <= F
  end
end
ws.each do |w|
  ss.each do |s|
    next if s > w
    next if w+s > F
    next if E < s.to_f/(w/100)
    r = s.to_f / (s + w)
    if rate < r
      rate = r
      sugar = s
      water = w
    end
  end
end
puts [water + sugar, sugar] * " "
