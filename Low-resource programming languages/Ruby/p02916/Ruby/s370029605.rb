n  = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

ans = 0
before = -10
as.each do |a|
  ans += bs[a-1]
  if a == before + 1
    ans += cs[before-1]
  end
  before = a
end
puts ans