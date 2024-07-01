n = gets.to_i
ss = []
n.times do
  ss.push(gets.to_i)
end

t = ss.inject(&:+)
if (t % 10).zero?
  ts = ss.reject { |x| (x % 10).zero? }
  p ts.size.zero? ? 0 : t - ts.min
else
  p t
end
