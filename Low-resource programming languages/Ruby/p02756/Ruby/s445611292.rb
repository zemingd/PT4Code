s = []
s << gets.chomp.to_s
q = gets.to_i
flag = 0

q.times do
  t,f,c = gets.chomp.split.map(&:to_s)
  if t == "1"
    flag = flag == 0 ? 1 : 0
  else
    if f == "1"
      s.unshift(c) if flag == 0
      s.push(c) if flag == 1
    else
      s.push(c) if flag == 0
      s.unshift(c) if flag == 1
    end
  end
end

puts flag.zero? ? s.join : s.reverse.join