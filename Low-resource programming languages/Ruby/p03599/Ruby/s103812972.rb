a,b,c,d,e,f = gets.split.map(&:to_i)

water = []
(0..f/100).each do |i|
  (0..f/100).each do |j|
    sum = (a*i + b*j) * 100
    water << sum if f >= sum
  end
end

sugar = []
(0..f/c).each do |i|
  (0..f/c).each do |j|
    sum = c*i + d*j
    sugar << sum if f >= sum
  end
end

m_wat = 0
m_sug = 0
m_con = 0
water.each do |w|
  sugar.each do |s|
    next if f < w + s
    if w != 0 && (w/100)*e >= s
      con = (100.0*s)/(w+s)
      if con > m_con
        m_wat = w
        m_sug = s
        m_con = con
      end
    end
  end
end

if m_wat == 0
  puts "#{100*a} 0"
else
  puts "#{m_wat+m_sug} #{m_sug}"
end
