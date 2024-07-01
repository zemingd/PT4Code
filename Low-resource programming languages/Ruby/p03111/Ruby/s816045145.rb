MAX = 0xFFFFFFFF

(@n, @a, @b, @c) = gets.chomp.split(' ').map(&:to_i)

@l = [0] * @n
@n.times { |i| @l[i] = gets.chomp.to_i }

def dfs(i, a, b, c)
  if i == @n then
    if [a, b, c].min == 0 then
      return MAX
    else
      return (@a - a).abs + (@b - b).abs + (@c - c).abs
    end
  end
  
  return [
    dfs(i + 1, a, b, c),
    dfs(i + 1, a + @l[i], b, c) + (a > 0 ? 10 : 0),
    dfs(i + 1, a, b + @l[i], c) + (b > 0 ? 10 : 0),
    dfs(i + 1, a, b, c + @l[i]) + (c > 0 ? 10 : 0)
  ].min
end

puts dfs(0, 0, 0, 0).to_s