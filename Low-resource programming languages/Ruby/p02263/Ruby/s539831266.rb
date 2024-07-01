s=gets.split
t=[]
s.each_index{|i|
  if s[i]=~/\d/
    t<<s[i].to_i
  else
    j,k=t.pop, t.pop
    t<<(eval "#{k} #{s[i]} #{j}")
  end
}
puts t[0]