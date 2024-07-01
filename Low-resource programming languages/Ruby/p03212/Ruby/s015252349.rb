N = gets.to_i

def rec(x)
  res = 0
  if x <= N
    s = x.to_s
    res += 1 if ["3", "5", "7"].map { |c| s.count(c) }.all? { |cnt| cnt > 0 }
    [3, 5, 7].each do |d|
      res += rec(10 * x + d)
    end
  end
  res
end

p rec(0)
