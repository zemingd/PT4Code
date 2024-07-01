N = gets.to_i
xs = Array.new(N)
ys = Array.new(N)
hs = Array.new(N)
N.times do |i|
  xs[i], ys[i], hs[i] = gets.split.map(&:to_i)
end

list = {}
memo = {}
for i in 0...N do
for cx in 0..100 do
  for cy in 0..100 do
    h = hs[i] + (xs[i] - cx).abs + (ys[i] - cy).abs
    
    if memo[[cx,cy]] == true
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

ans1 = 0
ans2 = 0
ans3 = 0
list.each{|k,v|
  ans1,ans2 = k
  ans3 = v
}

puts "#{ans1} #{ans2} #{ans3}"
