n=gets.to_i
p=gets.split.map &:to_i
f=0
com=p[0]
p.each_with_index do |el,i|
  next if i==0
  f+=1 if el>com
  com=[el,com].min
end
p n-f