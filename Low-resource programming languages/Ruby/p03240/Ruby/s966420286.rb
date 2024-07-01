N = gets.to_i
xs = Array.new(N)
ys = Array.new(N)
hs = Array.new(N)
N.times do |i|
  xs[i], ys[i], hs[i] = gets.split.map(&:to_i)
end

list = {}
memo = {}
zero_h_list = []
for i in 0...N do
for cx in 0..100 do
  for cy in 0..100 do
    if hs[i] == 0
      zero_h_list.push([hx,hy,cx,cy])
      next
    end  
    h = hs[i] + (xs[i] - cx).abs + (ys[i] - cy).abs
    
    if memo[[cx,cy]] == true
      next
    end

    if h == 0 
      memo[[cx,cy]] = true
      next
    end

    if list[[cx,cy]] == nil
      list[[cx,cy]] = h
    else
      if list[[cx,cy]] == h
        next
      else
        list.delete([cx,cy])
        memo[[cx,cy]] = true
      end
    end
  end
end
end

zero_h_list.each{|t|
  hx,hy,cx,cy = t
  h = list[[cx,cy]]
  list.delete([cx,cy]) if (h - (hx - cx).abs - (hy - cy).abs) > 0
}

ans1 = 0
ans2 = 0
ans3 = 0
list.each{|k,v|
  ans1,ans2 = k
  ans3 = v
}

if (N > 1)
  puts "#{ans1} #{ans2} #{ans3}"
else
  puts "#{xs[0]} #{ys[0]} #{hs[0]}"
end