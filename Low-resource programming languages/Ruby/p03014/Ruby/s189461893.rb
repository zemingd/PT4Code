h,w=gets.split.map(&:to_i)
s=[]
h.times do
  s << gets.chomp.chars
end
l=[]
h.times do
  l << []
end
0.upto(h-1) do |i|
  c=0
  l[i][0]=0
  0.upto(w-1) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i][j+1]=c if j<w-1
  end
end
r=[]
h.times do
  r << []
end
0.upto(h-1) do |i|
  c=0
  r[i][w-1]=0
  (w-1).downto(0) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    r[i][j-1]=c if j>0
  end
end
u=[]
w.times do
  u << []
end
0.upto(w-1) do |j|
  c=0
  u[0][j]=0
  0.upto(h-1) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    u[i+1][j]=c if i<h-1
  end
end
d=[]
w.times do
  d << []
end
0.upto(w-1) do |j|
  c=0
  d[h-1][j]=0
  (h-1).downto(0) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    d[i-1][j]=c if i>0
  end
end
a=0
h.times do |i|
  w.times do |j|
    if s[i][j]=="."&&a<l[i][j]+r[i][j]+u[i][j]+d[i][j]
      a=l[i][j]+r[i][j]+u[i][j]+d[i][j]
    end
  end
end
puts a+1
