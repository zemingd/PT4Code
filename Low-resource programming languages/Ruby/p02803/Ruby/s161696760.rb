h,w=gets.split.map(&:to_i)
ss=[]
h.times do
  ss << gets.chomp.chars
end
m=2
h.times do |hi|
  w.times do |wj|
    next if ss[hi][wj]=="#"
    s=[]
    h.times do |ii|
      s << ss[ii].dup
    end
    q=[[hi,wj]]
    s[hi][wj]=0
    k=1
    while q!=[]
      z=[]
      q.each do |i,j|
        if i>0&&s[i-1][j]=="."
          z << [i-1,j]
          s[i-1][j]=k
        end
        if j>0&&s[i][j-1]=="."
          z << [i,j-1]
          s[i][j-1]=k
        end
        if i<h-1&&s[i+1][j]=="."
          z << [i+1,j]
          s[i+1][j]=k
        end
        if j<w-1&&s[i][j+1]=="."
          z << [i,j+1]
          s[i][j+1]=k
        end
      end
      q=z.dup
      k+=1
    end
    m=k if m<k
  end
end
puts m-2
