N = gets.to_i
res = Array.new(10, 0)
N.times{
  a = gets.to_i
  rr = res.map{ |x| x }
  res.each{ |x| x = (a + x); rr[x%10] = [rr[x%10], x].max }
  res = rr
#  p res
}
p res[1..-1].max
