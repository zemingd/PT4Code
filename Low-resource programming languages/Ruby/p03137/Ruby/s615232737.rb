N, _ = gets.chomp.split(" ").map(&:to_i)
XM = gets.chomp.split(" ").map(&:to_i).sort

def dfs(i, r, m)
  s = XM[i]

  if r == 0
    return m + (XM.last - s)
  end

  ans = nil

  (i + 1).upto(XM.size - r) do |j|
    a = dfs(j, r - 1, m + XM[j - 1] - s)

    ans = a if ans.nil? || ans > a
  end

  ans
end

puts dfs(0, [N, XM.size].min - 1, 0)
