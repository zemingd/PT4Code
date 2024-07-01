x,y=gets.split.map(&:to_i)
xx=x.abs
yy=y.abs
if(y>0)
  if(x>0)
    if(yy>=xx)
      puts y-x+(x.zero?? -1 : 0)
    else
      puts x-y+2+(x.zero?? -1 : 0)
    end
  else
    if(yy>=xx)
      puts y+x+1+(x.zero?? -1 : 0)
    else
      puts -x-y+1+(x.zero?? -1 : 0)
    end
  end
else
  if(x>0)
    if (yy>xx)
      puts -x-y+1+(x.zero?? -1 : 0)
    else
      puts x+y+1+(x.zero?? -1 : 0)
    end
  else
    if(yy>xx)
      puts -y+x+2+(x.zero?? -1 : 0)
    else
      puts -x+y+(x.zero?? -1 : 0)
    end
  end
end
