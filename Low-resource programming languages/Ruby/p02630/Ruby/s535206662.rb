_n=gets.to_i
ary=gets.split.map(&:to_i)
q=gets.to_i
q.times{
  b,c=gets.split.map(&:to_i)
  ary.map!{|a|a==b ? c : a}
  puts ary.sum
}