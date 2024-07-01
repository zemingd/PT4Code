s = []
s << gets.chomp
q = gets.to_i

flag = 0

q.times do
  t,f,c = gets.chomp.split.map(&:to_s)
  if t == "1"
    flag = flag == 0 ? 1 : 0
  else
    if flag == 0
      s.unshift(c) if f == "1"
      s.push(c) if f == "2"
    else
      s.unshift(c) if f == "2"
      s.push(c) if f == "1"
    end
  end
end

puts flag.zero? ? s.join : s.reverse.join