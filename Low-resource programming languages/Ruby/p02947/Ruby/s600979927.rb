@m = []
1.upto(26) do |x|
  @m[x-1] = 10 ** (x-1)
end
def to_num(s)
  r = 0
  s.each_codepoint do |x|
    # r += (10 ** (x-97))
    r += @m[x-97]
  end
  return r
end

n = gets.chomp.to_i
x = []
n.times do
  x << to_num(gets.chomp)
end
# puts x
result = 0
1.upto(n-1) do |i|
  (i+1).upto(n) do |j|
    result += 1 if x[i-1] == x[j-1]
  end
end
puts result