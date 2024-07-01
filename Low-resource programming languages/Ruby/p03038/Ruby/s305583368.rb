N,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = a.map{|ai| [1, ai]}
M.times do
  x << gets.split.map(&:to_i)
end
x.sort_by!{|xi| -xi[1]}
cnt = 0
ans = 0

x.each do |xi|
  cnt += xi[0]
  if cnt < N
    ans += xi[1]*xi[0]
  else
    ans += xi[1]*xi[0]
    ans -= (cnt-N)*xi[1]
    break
  end
end

puts ans


