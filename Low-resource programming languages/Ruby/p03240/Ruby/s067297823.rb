n=gets.to_i
for i in 1...n
  xyh<<gets.split.map &:to_i
end
for cx in 0..100
  for cy in 0..100
    lo=0
    ex=nil
    ok=true
    for x,y,h in xyh
      d=(x-cx).abs+(y-cy).abs
      if h==0
        lo=[lo,d].max
      else
        if ex.nil?
          ex=h+d
        elsif ex!=h+d
          ok=false
          break
        end
      end
    end
    if ok&&ex
      puts [cx,cy,ex]*' '
      exit
    end
  end
end
