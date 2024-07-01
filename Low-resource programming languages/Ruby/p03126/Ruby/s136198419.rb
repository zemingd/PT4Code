n,m=gets.split.map(&:to_i)
liked_foods=Array.new(m,0)
n.times{
  k,*a=gets.split.map(&:to_i)
  a.each{|i|liked_foods[i-1]+=1}
}

puts liked_foods.count{|num|num==n}