n=gets.to_i
xyh=[]
for _ in 1..n
  xyh<<(gets.split.map &:to_i)
end
for cx in 0..100
  for cy in 0..100
    lo=10**18
    ex=nil
    ok=true
    for x,y,h in xyh
      d=(x-cx).abs+(y-cy).abs
      if h==0
        lo=[lo,d].min
      else
        if ex.nil?
          ex=h+d
        elsif ex!=h+d
          ok=false
          break
        end
      end
    end
    if ok&&ex&&ex<=lo
      puts [cx,cy,ex]*' '
      exit
    end
    if ok&&lo==1
      puts [cx,cy,1]*' '
      exit
    end
  end
end
