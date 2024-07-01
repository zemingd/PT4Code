N = gets.chomp.to_i

def dfs(s)
  return 0 if s.to_i > N

  res = ['7', '5', '3'].all? { |x| s.include?(x) } ? 1 : 0

  ['7', '5', '3'].each do |i|
    res += dfs(s + i)
  end

  return res
end

puts dfs('0')
