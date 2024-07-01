n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)

d=a.map{|x|x.abs}
min=d.min

ans=0
(n-1).times do|i|
  if a[i].abs!=min and a[i]<0
    a[i]*=-1
    a[i+1]*=-1
  end 
end
puts a.inject(:+)
