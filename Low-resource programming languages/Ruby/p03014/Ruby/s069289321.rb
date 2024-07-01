h,w=gets.split.map(&:to_i)
s=[]
h.times do
  s << gets.chomp.chars
end
#p s
l=[]
h.times do
  l << [0]*w
end
a=0
0.upto(h-1) do |i|
  c=0
  0.upto(w-2) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i][j+1]=c if s[i][j+1]=="."
  end
  c=0
  (w-1).downto(1) do |j|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i][j-1]+=c if s[i][j-1]=="."
  end
end
0.upto(w-1) do |j|
  c=0
  0.upto(h-2) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i+1][j]+=c if s[i+1][j]=="."
  end
  c=0
  (h-1).downto(1) do |i|
    if s[i][j]=="."
      c+=1
    else
      c=0
    end
    l[i-1][j]+=c if s[i-1][j]=="."
  end
end
#p l
h.times do |i|
  w.times do |j|
    if s[i][j]=="."&&a<l[i][j]
      a=l[i][j]
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
