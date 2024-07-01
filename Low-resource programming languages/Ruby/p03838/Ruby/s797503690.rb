x,y=gets.split.map(&:to_i)
xx=x.abs
yy=y.abs
if(y>0)
  if(x>0)
    if(yy>=xx)
      puts y-x
    else
      puts x-y+2
    end
  else
    if(yy>=xx)
      puts y+x+1
    else
      puts -x-y+1
    end
  end
else
  if(x>0)
    if (yy>xx)
      puts -x-y+1
    else
      puts x+y+1
    end
  else
    if(yy>xx)
      puts -y+x+2
    else
      puts -x+y
    end
  end
end
