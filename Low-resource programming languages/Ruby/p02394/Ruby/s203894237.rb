def min(a)
  min = 0
  for i in 0...a.length()
    
    if a[i]<=a[min]
      min = i
    end
  end
  min
end

def circle(w,h,x,y,r)
  left = x
  right = w - x
  u = h - y
  s = y
  length = Array.new(4)
  length[0]=left
  length[1]=right
  length[2]=u
  length[3]=s
  if length[min(length)] >= r
    "Yes\n"
  else
    "No\n"
  end
end 

a = gets().split(" ")

print circle(a[0].to_i,a[1].to_i,a[2].to_i,a[3].to_i,a[4].to_i)