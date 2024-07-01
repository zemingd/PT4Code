@N = gets.chomp().to_i
X = gets.chomp.split(' ').map(&:to_i)

def get_mid(ary)
  p = (@N + 1) / 2
  return ary[p-1]
end

X.sort!
mid_r = X[@N/2]
mid_l = X[@N/2-1]

if mid_l == mid_r
  @N.times{ puts mid_r }
else
  X.each_with_index do |val, index|
    if index == 0
      x_cp = X[1..(@N-1)] if index == 0
    else
      x_cp = X[0..(index-1)] + X[(index+1)..(@N-1)]
    end

    x_cp.sort!
    p get_mid(x_cp)
  end
end
