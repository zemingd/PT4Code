n = gets.to_i
1.upto(n) do |i|
  cnt = 0
  sqrt = (Math.sqrt(i)).to_i+1
  (1..sqrt).each do |x|
    (1..sqrt).each do |y|
      #d = -3*x*x-2*x*y-3*y*y+4*i
      #next if d < 0
      #z = (0.5*(Math.sqrt(d)-x-y)).round
      ##(z.floor..z.ceil).each do |z|
      #  cnt += 1 if x*x+y*y+z*z+x*y+y*z+z*x==i #c+z*(b+z) == 0
      ##end
      (1..sqrt).each do |z|
        if x*x+y*y+z*z+x*y+y*z+z*x==i
          cnt += 1
          break
        end
      end
    end
  end
  p cnt
end
