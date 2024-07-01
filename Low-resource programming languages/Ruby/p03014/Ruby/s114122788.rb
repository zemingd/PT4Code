h,w=gets.split.map(&:to_i)
s=[]
h.times do
  s << gets.chomp.chars
end
#p s
l,r,u,d=[],[],[],[]
h.times do
  l << [0]*w
  r << l[-1].dup
  u << l[-1].dup
  d << l[-1].dup
end
0.upto(h-1) do |i|
  c=0
  0.upto(w-1) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i][j+1]=c if j<w-1&&s[i][j+1]=="."
  end
end
0.upto(h-1) do |i|
  c=0
  (w-1).downto(0) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    r[i][j-1]=c if j>0&&s[i][j-1]=="."
  end
end
0.upto(w-1) do |j|
  c=0
  0.upto(h-1) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    u[i+1][j]=c if i<h-1&&s[i+1][j]=="."
  end
end
0.upto(w-1) do |j|
  c=0
  (h-1).downto(0) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    d[i-1][j]=c if i>0&&s[i-1][j]=="."
  end
end
a=0
#p l
#p r
#p u
#p d
h.times do |i|
  w.times do |j|
    if s[i][j]=="."&&a<l[i][j]+r[i][j]+u[i][j]+d[i][j]
      a=l[i][j]+r[i][j]+u[i][j]+d[i][j]
    end
#    if s[i][j]=="."
#      c=l[i][j]+r[i][j]+u[i][j]+d[i][j]
#      print c+1
#    else
#      print "#"
#    end
  end
#  print "\n"
end
puts a+1
