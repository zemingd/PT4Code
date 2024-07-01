n, m, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0
now = 0

loop do
  a = as.first
  b = bs.first
  break if [a, b].all?(nil)

  if as.empty?
    t = bs.shift
  elsif bs.empty?
    t = as.shift
  else
    if a >= b
      t = bs.shift
    else
      t = as.shift
    end
  end
  break if now + t > k
  now += t

  ans += 1
end

puts ans
