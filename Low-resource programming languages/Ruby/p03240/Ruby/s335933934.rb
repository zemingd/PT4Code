N = gets.to_i
R = N.times.map { gets.split.map(&:to_i) }.sort_by{|c| -c[2]}
def max(a,b); a > b ? a : b; end
def ans
  (0 .. 100).each do |cx|
    (0 .. 100).each do |cy|
      x0,y0,h0 = R[0]
      h_ = h0 + (cx - x0).abs + (cy - y0).abs
      next if h_ < 1  
      return [cx, cy, h_] if R.all?{|x,y,h| h == max(h_ - (cx - x).abs - (cy - y).abs, 0) }
    end
  end
end
puts ans.join(' ')