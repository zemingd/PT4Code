N, *AS = $stdin.read.split.map(&:to_i)
def n_2(a)
  return 0 if a.odd?
  30.downto(1) do |i|
    k = 2**i
    next if k > a
    if a % k == 0
      return i
    end
  end
  return 0
end
#AS.each do |a|
#  p a: a, n_2: n_2(a)
#end
p AS.map{|a| n_2(a)}.inject(:+)