n = gets.chomp.to_i
ans = 0

ary357 = ['3','5','7']

def retarys(int, ary)
  retary = []
  int.times {retary << ary}
  retary
end

2.step(8){|i|
  ans += ary357.product(*retarys(i,ary357)).count {|aa| (aa.uniq.size == 3) && (aa.inject(:+).to_i <= n)}
}
puts ans