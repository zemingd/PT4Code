@N = gets.chomp().to_i
X = gets.chomp.split(' ').map(&:to_i)
X_cp = X.dup

def get_mid(ary)
  p = (@N + 1) / 2
  return ary[p-1]
end

X_cp.sort!
mid_r = X_cp[@N/2]
mid_l = X_cp[@N/2-1]

if mid_l == mid_r
  @N.times{ puts mid_r }
else
  X.each_with_index do |val, index|
    if index == 0
      x_cp_ = X[1..(@N-1)] if index == 0
    else
      x_cp_ = X[0..(index-1)] + X[(index+1)..(@N-1)]
    end
    x_cp_.sort!
    p get_mid(x_cp_)
  end
end
