h,w=gets.split.map(&:to_i)
s=[]
q=[]
f=false
a=[]
h.times do |i|
  s << gets.chomp.chars
  if !f&&s[-1].include?(".")
    q << [i,s[-1].index(".")]
    f=true
  end
  a << s[-1].dup
end
a[q[0][0]][q[0][1]]=0
k=1
ii,jj=0,0
while q!=[]
  z=[]
  q.each do |i,j|
    if i<h-1&&a[i+1][j]=="."
      z << [i+1,j]
      a[i+1][j]=k
    end
    if i>0&&a[i-1][j]=="."
      z << [i-1,j]
      a[i-1][j]=k
    end
    if j<w-1&&a[i][j+1]=="."
      z << [i,j+1]
      a[i][j+1]=k
    end
    if j>0&&a[i][j-1]=="."
      z << [i,j-1]
      a[i][j-1]=k
    end
  end
  if z==[]
    ii,jj=q[0]
  end
  q=z.dup
  k+=1
end
q=[[ii,jj]]
a=[]
h.times do |i|
  a << s[i].dup
end
a[ii][jj]=0
k=1
while q!=[]
  z=[]
  q.each do |i,j|
    if i<h-1&&a[i+1][j]=="."
      z << [i+1,j]
      a[i+1][j]=k
    end
    if i>0&&a[i-1][j]=="."
      z << [i-1,j]
      a[i-1][j]=k
    end
    if j<w-1&&a[i][j+1]=="."
      z << [i,j+1]
      a[i][j+1]=k
    end
    if j>0&&a[i][j-1]=="."
      z << [i,j-1]
      a[i][j-1]=k
    end
  end
  if z==[]
    ii,jj=q[0]
  end
  q=z.dup
  k+=1
end
q=[[ii,jj]]
a=[]
h.times do |i|
  a << s[i].dup
end
a[ii][jj]=0
k=1
while q!=[]
  z=[]
  q.each do |i,j|
    if i<h-1&&a[i+1][j]=="."
      z << [i+1,j]
      a[i+1][j]=k
    end
    if i>0&&a[i-1][j]=="."
      z << [i-1,j]
      a[i-1][j]=k
    end
    if j<w-1&&a[i][j+1]=="."
      z << [i,j+1]
      a[i][j+1]=k
    end
    if j>0&&a[i][j-1]=="."
      z << [i,j-1]
      a[i][j-1]=k
    end
  end
  if z==[]
    ii,jj=q[0]
  end
  q=z.dup
  k+=1
end
q=[[ii,jj]]
a=[]
h.times do |i|
  a << s[i].dup
end
a[ii][jj]=0
k=1
while q!=[]
  z=[]
  q.each do |i,j|
    if i<h-1&&a[i+1][j]=="."
      z << [i+1,j]
      a[i+1][j]=k
    end
    if i>0&&a[i-1][j]=="."
      z << [i-1,j]
      a[i-1][j]=k
    end
    if j<w-1&&a[i][j+1]=="."
      z << [i,j+1]
      a[i][j+1]=k
    end
    if j>0&&a[i][j-1]=="."
      z << [i,j-1]
      a[i][j-1]=k
    end
  end
  if z==[]
    ii,jj=q[0]
  end
  q=z.dup
  k+=1
end
q=[[ii,jj]]
a=[]
h.times do |i|
  a << s[i].dup
end
a[ii][jj]=0
k=1
while q!=[]
  z=[]
  q.each do |i,j|
    if i<h-1&&a[i+1][j]=="."
      z << [i+1,j]
      a[i+1][j]=k
    end
    if i>0&&a[i-1][j]=="."
      z << [i-1,j]
      a[i-1][j]=k
    end
    if j<w-1&&a[i][j+1]=="."
      z << [i,j+1]
      a[i][j+1]=k
    end
    if j>0&&a[i][j-1]=="."
      z << [i,j-1]
      a[i][j-1]=k
    end
  end
  if z==[]
    ii,jj=q[0]
  end
  q=z.dup
  k+=1
end
puts k-2
