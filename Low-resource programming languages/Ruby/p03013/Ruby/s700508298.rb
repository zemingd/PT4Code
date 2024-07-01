n, m = gets.split.map(&:to_i)
as = m.times.map{|i| gets.to_i }

def dfs(num)
  return 1 if num == 1 || num == 0
  return dfs(num-1) + dfs(num-2)
end

none = false
(as.size-1).times do |i|
  none = true if as[i] + 1 == as[i+1]

end

p dfs(3)
p dfs(4)
p dfs(5)
p dfs(6)
p dfs(7)

unless none
  result = 1
  as.unshift(0).push(n)
  (0..as.size-2).each do |ai|
    result *= dfs(as[ai+1] - as[ai] - 1)
  end
end

puts none ? 0 : (result%(1_000_000_007))
