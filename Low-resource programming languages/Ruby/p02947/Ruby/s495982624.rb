Ss = readlines.drop(1).map(&:chomp)

def c(n)
  @m ||= [nil, 0]
  @m[n] ||= (n.downto(2).inject(:*)) / 2
end

puts Ss.group_by{|s| s.chars.sort}.map{|_, a| c(a.size)}.inject(:+)