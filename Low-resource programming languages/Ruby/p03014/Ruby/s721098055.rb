io = STDIN
io = DATA   #!#!#!#!must delete
H,W=io.gets.split.map(&:to_i)
ar=H.times.map{io.gets.chomp.split(//)}
def trans(ary)
  slice=ary.slice_when{|a,b|a!=b}.to_a
  slice.map{|ar|ar[0]=='#' ? ar : ar.map{|a|ar.size}}.flatten
end
row=ar.clone
col=ar.clone.transpose
row.map! do |ary|
  trans(ary)
end
col.map! do |ary|
  trans(ary)
end
ans=0
H.times do |h|
  W.times do |w|
    next if ar[h][w]=="#"
    sum=row[h][w]+col[w][h]-1
    ans=sum if sum>ans
  end
end
p ans
