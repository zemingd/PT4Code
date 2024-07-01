def is753?(x)
  x.include?('7') && x.include?('5') && x.include?('3')
end

def dfs(s)
  return 0 if s.to_i > N

  res = is753?(s) ? 1 : 0
  T.each do |t|
    res += dfs(s + t)
  end
  res
end

T = %w(7 5 3)
N = gets.to_i
puts dfs('0')