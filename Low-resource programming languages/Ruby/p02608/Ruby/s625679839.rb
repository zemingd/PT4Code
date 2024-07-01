def cal(x,y,z)
  x**2 + y**2 + z**2 + x*y + y * z + z * x
end

n = gets.to_i
u = []
h = {}
(1..50).each do |x|
  (1..50).each do |y|
    (1..50).each do |z|
      a = cal(x,y,z)
      if a <= 10**4
        u << a
        b = [x,y,z].sort
        unless h.has_key?(a)
            h[a]=[b]
        else
          h[a] << b
        end
      end
    end
  end
end

(1..n).each do |i|
  if h.has_key?(i)
    num = 0
    h[i].uniq.each do |x|
      y = x.uniq.count
      if y == 1
        num += 1
      elsif y == 2
        num += 3
      elsif y == 3
        num += 6
      else
        puts "???"
      end
    end
    puts num
  else
    puts 0
  end
end