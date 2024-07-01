X = STDIN.read.to_i

def cal(n)
  return (100 * 1.01).floor if n == 1

  (1.01 * cal(n-1)).floor
end

1.upto(1000000000000000000) do |i|
  if cal(i) >= X
    print i
    exit
  end
end
