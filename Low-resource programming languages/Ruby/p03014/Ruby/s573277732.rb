h,w=gets.split.map(&:to_i)

s=Array.new(h) do
  gets
end

tmp=Array.new(w,0)

l=Array.new(h){tmp.dup}
r=Array.new(h){tmp.dup}
u=Array.new(h){tmp.dup}
d=Array.new(h){tmp.dup}

h.times do |i|
  w.times do |j|
    unless s[i][j]=='#'
      if j==0
        l[i][j]=1
      else
        l[i][j]=l[i][j-1]+1
      end
    end
  end
  w.times do |j|
    j=w-1-j
    unless s[i][j]=='#'
      if j==w-1
        r[i][j]=1
      else
        r[i][j]=r[i][j+1]+1
      end
    end
  end
end

w.times do |j|
  h.times do |i|
    unless s[i][j]=='#'
      if i==0
        u[i][j]=1
      else
        u[i][j]=u[i-1][j]+1
      end
    end
  end
  h.times do |i|
    i=h-1-i
    unless s[i][j]=='#'
      if i==h-1
        d[i][j]=1
      else
        d[i][j]=d[i+1][j]+1
      end
    end
  end
end

ans=0

h.times do |i|
  w.times do |j|
    res = l[i][j]+r[i][j]+u[i][j]+d[i][j]-3
    ans = res if ans < res
  end
end

puts ans
