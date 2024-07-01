
def solve(k,as)
  n = as.length
  n.times do |i|
    next if k[i] == 0
    as[i].each do |x,y|
      return 0 if k[x] != y
    end
  end
  ans = 0
  n.times do |i|
    ans += 1 if k[i] == 1
  end
  return ans
end

n = gets.to_i
as = []
n.times do |i|
  a = gets.to_i
  tmp = []
  a.times do |j|
    x,y = gets.split.map(&:to_i)
    x -= 1
    tmp << [x,y]
  end
  as << tmp
end

ans = 0
(2**n).times do |i|
  tmp = solve(i,as)
  ans = tmp if tmp > ans
end
p ans