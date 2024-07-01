@N = gets.chomp().to_i
X = gets.chomp.split(' ').map(&:to_i)

def get_mid(ary)
  p = (@N + 1) / 2
  return ary[p]
end

X.each_with_index do |val, index|
  x_cp = X[0..(index-1)] + X[(index+1)..-1]
  x_cp.sort()
  p get_mid(x_cp)
end
