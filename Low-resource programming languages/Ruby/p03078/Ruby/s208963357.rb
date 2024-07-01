x,y,z,k=gets.split.map(&:to_i)
a=[]
container=Array.new(3){Array.new}
3.times{|i|
  seq=gets.split.map(&:to_i).sort
  container[i] << seq.pop 
  seq.each{|v|
    a << [v,i]
  }
}
a.sort_by(&:first).reverse.each{|v,i|
  container[i] << v
  break if container.map(&:size).inject(:*)>=10*k
}
ans=[]
container[0].each{|u|
container[1].each{|v|
container[2].each{|w|
ans << u+v+w
}}}

puts ans.sort.reverse.take(k)