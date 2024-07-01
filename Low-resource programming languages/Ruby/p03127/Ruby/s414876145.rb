n =gets.to_i
array = gets.split.map{|a| a.to_i}
def gcb(a,b)
  gcb(b,a) if b > a
  return b if (r= a%b).zero?
  gcb(b,r)
end

d = array.inject{|memo,item|
gcb(memo,item)}
puts d
