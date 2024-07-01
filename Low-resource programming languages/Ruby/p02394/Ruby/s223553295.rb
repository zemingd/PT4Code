def in_rectangle(w,h,x,y,r)
  if((x-r>0)&&(x+r<w)&&(y-r>0)&&(y+r<h))
    "Yes"
  else
    "No"
  end
end