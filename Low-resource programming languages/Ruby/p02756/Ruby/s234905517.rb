s = []
s << gets.to_s
q = gets.to_i
q.times do
  t,f,c = gets.split.map(&:to_s)
  if t == "1"
    s = s.reverse
  elsif t == "2"
    if f == "1"
      s.unshift(c)
    else
      s.push(c)
    end
  end
end
puts s.join