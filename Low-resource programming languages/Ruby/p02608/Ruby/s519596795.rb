n = gets.to_s.to_i
1.upto(n) do |i|
  cnt = 0
  sqrt = (Math.sqrt(i)).to_i+1
  (1..sqrt).each do |x|
    (1..sqrt).each do |y|
      b = x+y
      c = x*x+y*y+x*y - i
      d = b*b - 4*c
      next if d < 0
      z = ((Math.sqrt(d) - b) * 0.5).round
      if z > 0 and x*x+y*y+z*z+x*y+y*z+z*x == i
        cnt += 1
      end
    end
  end
  p cnt
end
