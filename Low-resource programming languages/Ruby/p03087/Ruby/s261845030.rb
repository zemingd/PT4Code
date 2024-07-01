N,Q = gets.split.map &:to_i
S = gets.chomp
sb = []
se = []
(0...S.size-1).each{ |i|
  if S[i..i+1] == "AC"
    sb << i
    se << i+1
  end
}
#p sb,se
Q.times {
  l,r = gets.split.map &:to_i
  il = (0...sb.size).bsearch{ |i| l-1 <= sb[i] } || 0
  ir = (0...se.size).bsearch{ |i| r-1 < se[i] } || se.size
  #p [l,r,il,ir,S[l-1..r-1]]
  p [ir - il, 0].max
}