N = gets.to_i
h = Hash.new(0)
N.times{
  s = gets.chomp
  h[s] = h[s] + 1
}
tmp = h.sort_by{|_,v| v}.reverse
_,max_num = tmp[0]
ans = []
N.times{|x|
  a,b = tmp[x]
  ans.push(a) if b == max_num
}
ans.sort!
ans.each{|x| puts x}
