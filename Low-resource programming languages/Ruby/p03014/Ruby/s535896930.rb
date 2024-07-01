h,w = gets.split.map(&:to_i)
g = []
l = Array.new(h).map{Array.new(w,0)}
h.times do |ind|
  s = gets.chomp.chars
  g << s
  r = [nil,nil]
  for i in 0..(w-1)
    if s[i] == "#"
      if r != [nil,nil]
        r[0].upto(r[1]){|j|l[ind][j] = r[1]-r[0]+1}
        r = [nil,nil]
      end
    else
      if r[0] == nil
        r[0] = i
        r[1] = i
      else
        r[1] = i
      end
      if i == w-1
        if r != [nil,nil]
          r[0].upto(r[1]){|j|l[ind][j] = r[1]-r[0]+1}
          r = [nil,nil]
        end
      end
    end
  end
end
gp = g.transpose
for k in 0..(w-1)
  s = gp[k]
  r = [nil,nil]
  for m in 0..(h-1)
    if s[m] == "#"
      if r != [nil,nil]
        r[0].upto(r[1]){|j|l[j][k] = r[1]-r[0]+1}
        r = [nil,nil]
      end
    else
      if r[0] == nil
        r[0] = m
        r[1] = m
      else
        r[1] = m
      end
      if m == h-1
        if r != [nil,nil]
          r[0].upto(r[1]){|j|l[j][k] += r[1]-r[0]}
          r = [nil,nil]
        end
      end
    end
  end
end
puts l.flatten.max