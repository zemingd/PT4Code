h,w=gets.chomp.split.map(&:to_i)
s=[]
aa=[]
h.times do |i|
  a=gets.chomp
  aa << [0]*w
  w.times do |j|
    if a[j]==?#
      s << [i,j]
      aa[i][j]=1
    end
  end
end
c=0
while s!=[]
  ss = []
  c += 1
  s.each do |i, j|
    if j > 0 && aa[i][j-1] == 0
      aa[i][j-1] = 1
      ss << [i, j-1]
    end
    if i > 0 && aa[i-1][j] == 0
      aa[i-1][j] = 1
      ss << [i-1, j]
    end
    if j < w-1 && aa[i][j+1] == 0
      aa[i][j+1] = 1
      ss << [i, j+1]
    end
    if i < h-1 && aa[i+1][j] == 0
      aa[i+1][j] = 1
      ss << [i+1, j]
    end
  end
  s = ss.dup
end
p c-1
