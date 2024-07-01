N=gets.to_i
A=gets.split.map &:to_i
ta=A.uniq
a=A.dup
N.times do |i|
  na=a.dup
  na.delete_at(i)
  arr=[]
  ta.each do |i|
    tmp=na.count(i)
    sa = tmp > 1 ? (tmp*0.5)*(tmp-1) : 0
    arr<< sa.to_i
  end
  puts arr.inject(:+)
end