n,k,q=gets.chomp.split(" ").map(&:to_i)
as=Array.new(n,0)
while a=gets
  break unless a
  as[a.to_i.pred] += 1
end
as.each{|x| puts k-(q-x)>0 ? 'Yes' : 'No' }