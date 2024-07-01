n = gets.to_i
1.upto(n) do |i|
  cnt = 0
  sqrt = (Math.sqrt(i)/6).to_i+1
  (1..sqrt).each do |x|
    (1..sqrt).each do |y|
=begin
      b = x+y
      c = x*x+y*y+x*y-i
      d = b*b-4*c
      next if d<0
      z = (-b+Math.sqrt(d))*0.5
      (z.floor..z.ceil).each do |z|
        cnt += 1 if x*x+y*y+z*z+x*y+y*z+z*x==i #c+z*(b+z) == 0
      end
=end
      (1..sqrt).each do |z|
        if x*x+y*y+z*z+x*y+y*z+z*x==i
          cnt += 1
          #puts "  #{[x, y, z]}"
        end
      end
    end
  end
  p cnt
end