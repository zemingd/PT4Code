def main
  n = gets.chop.to_i
  hs = gets.chop.split.map(&:to_i)
  ans = 0
  prev = 10 ** 9 + 1
  count = -1
  0.upto(n-1) do |i|
    cur = hs[i]
    if cur <= prev
      count += 1
    else
      if count > ans
        ans = count
      end
      count = 0
    end
    prev = cur
  end
  if count > ans
    ans = count
  end
  puts ans
end

if __FILE__ == $0
  main
end