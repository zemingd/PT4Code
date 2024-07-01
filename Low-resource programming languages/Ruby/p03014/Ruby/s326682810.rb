H, W = gets.split.map(&:to_i)
Ss = readlines.map{|l| l.chomp.split('')}

def scan(ary, h, w)
  l = Array.new(h){Array.new(w, 0)}
  (0 ... h).each do |y|
    (0 ... w).select{|x| ary[y][x] == '.'}.each do |x|
      l[y][x] = x == 0 ? 1 : l[y][x - 1] + 1
    end
  end
  l
end

l = scan(Ss, H, W).flatten
r = scan(Ss.map(&:reverse), H, W).map(&:reverse).flatten
u = scan(Ss.transpose, W, H).transpose.flatten
d = scan(Ss.transpose.map(&:reverse), W, H).map(&:reverse).transpose.flatten
scan(Ss.transpose.map(&:reverse), W, H).map(&:reverse).transpose.flatten
puts l.zip(r, u, d).map{|a, b, c, d| a + b + c + d}.max - 3