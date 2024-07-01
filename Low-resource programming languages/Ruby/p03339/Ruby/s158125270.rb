EAST = 0
WEST = 1

def build_cumsum(s)
  cumsum = [[0, 0]]
  s.split('').each_with_index do |x, i|
    if x == 'E' then
      cumsum[i + 1] = [cumsum[i][EAST] + 1, cumsum[i][WEST]]
    else
      cumsum[i + 1] = [cumsum[i][EAST], cumsum[i][WEST] + 1]
    end
  end
  return cumsum
end

def diff_cumsum(a, b)
  [b[EAST] - a[EAST], b[WEST] - a[WEST]]
end
  
def main(argv)
  n = gets.chomp.to_i
  s = gets.chomp
  
  cumsum = build_cumsum(s)
  
  m = n + 1
  (0...n).each do |i|
    a = diff_cumsum(cumsum[0], cumsum[i])
    b = diff_cumsum(cumsum[i + 1], cumsum[n])
    m = [m, a[WEST] + b[EAST]].min
  end  
  puts m.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end