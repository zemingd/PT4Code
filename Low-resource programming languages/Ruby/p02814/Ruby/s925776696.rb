n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

mul = 1
while a.index{|v| v.odd?}.nil?
  a.map!{|v| v/2}
  mul *= 2
end

if a.all?{|v| v.odd?}
  minX = mul / 2
  a.each do |v|
    minX = minX.lcm(v)
    if minX > m
      p 0 
      exit
    end
  end
  ans = (m / minX + 1) / 2
  p ans
else
  p 0
end
