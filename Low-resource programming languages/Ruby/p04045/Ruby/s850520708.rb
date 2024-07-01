N, K = gets.split.map(&:to_i)
D    = gets.split.map(&:to_i)

NUMS = []
0.upto(9){ |i| NUMS << i.to_s unless D.include?(i) }

def dfs(s)
  #p "s     : #{s}"
  #p "s.to_i: #{s.to_i}"
  if s.to_i >= N
  #p "       ------> over"
    return s.to_i
  else
    anss = []
    NUMS.each do | n |
      next if s == '0' && n == '0'
      ans = dfs(s + n)
      anss << ans if ans >= N
    end
    return anss.min
  end
end

p dfs('0')