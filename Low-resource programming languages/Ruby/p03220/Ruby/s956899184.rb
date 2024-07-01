n=gets.to_i
t,a=gets.split.map(&:to_i)
hs=gets.split.map(&:to_i)

kion=999999999
id=-1
hs.each_with_index{|h,i|
  if kion>((t-h*0.006)-a).abs
    kion=((t-h*0.006)-a).abs
    id=i
  end
}
puts id+1