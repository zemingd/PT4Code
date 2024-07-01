def decide_h(cx,cy,ary_xyh)
  h = ary_xyh[2]+(cx-ary_xyh[0]).abs+(cy-ary_xyh[1]).abs
  return h
end

def histrue?(cx,cy,ary_xyh,h)
  tmp_h = [(h-(ary_xyh[0]-cx).abs-(ary_xyh[1]-cy).abs),0].max
  if tmp_h == ary_xyh[2]
    true
  else
    false
  end


  # tmp_h = ary_xyh[2]+(cx-ary_xyh[0]).abs+(cy-ary_xyh[1]).abs
  # if tmp_h == h
  #   return true
  # else
  #   return false
  # end
end

n = gets.chomp.to_i
ary = []
n.times do
  xi,yi,hi = gets.chomp.split.map(&:to_i)
  ary << [xi,yi,hi]
end

nukeru = false
for cx in  0..100
  for cy in 0..100
    flag = true
    # hを定める
    h = 0
    ary.each do |point|
      if point[2] != 0
        h = decide_h(cx,cy,point)
        if h <= 10**9
          break
        else
          h = 0
        end
      end
    end
    # hが正しいか調べる
    ary.each do |point|
      if !histrue?(cx,cy,point,h)
        flag = false
        break
      end
    end
    # hが正しかったらすべてのループを抜ける
    if flag
      nukeru = true
      print("#{cx} #{cy} #{h}")
      break
    end
  end
  if nukeru
    break
  end
end
