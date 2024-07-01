w, h, x, y = gets.chop.split.map(&:to_i)

s_ans=w*h/2.0
if ((x==w/2.0)&&(y==h/2.0))
  sw=1
elsif((w==h)&&((x==y)||(y==-x+h)))
  sw=1
else
  sw=0  
end

puts s_ans.to_s+" "+sw.to_s
