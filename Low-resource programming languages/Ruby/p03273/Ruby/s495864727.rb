h,w=gets.split.map(&:to_i)
mat=h.times.map{gets.chomp}
row=Array.new(h,0)
col=Array.new(w,0)
h.times{|i|w.times{|j|
  if mat[i][j]==?.
    row[i]+=1
    col[j]+=1
  end
}}
h.times{|i|
  w.times{|j|
    print mat[i][j] unless row[i]==w||col[j]==h
  }
  puts unless row[i]==w
}