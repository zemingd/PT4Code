s = []
ans = []
s << gets.to_s
q = gets.to_i

flag = 0

q.times do
  tfc = gets.chomp.split.map(&:to_s)
  if tfc[0] == "1"
    flag = flag == 0 ? 1 : 0
  else
    if tfc[1] == "1"
      s.unshift(tfc[2]) if flag == 0
      s.push(c) if flag == 1
    else
      s.unshift(tfc[2]) if flag == 1
      s.push(tfc[2]) if flag == 0
    end
  end
end

s.each do |n|
  ans << n.chomp
end

puts flag == 0 ? ans.join : ans.reverse.join