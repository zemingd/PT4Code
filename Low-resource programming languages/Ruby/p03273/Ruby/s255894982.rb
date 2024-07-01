h,w=gets.split.map(&:to_i)
a=[*1..h].map{gets}
def check(arr,y,x,h,w)
  flag1=0
  flag2=0
  h.times{|i|
    if arr[i][x]=='#' then flag1=1 end
  }
  w.times{|j|
    if arr[y][j]=='#' then flag2=1 end
  }
  return flag1+flag2>1
end
h.times{|j|
  f=0
  w.times{|i|
    if check(a,j,i,h,w) then print a[j][i]; f=1 end
  }
  if f==1 then puts "" end
}