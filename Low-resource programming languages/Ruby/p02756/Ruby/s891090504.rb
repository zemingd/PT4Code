s = []
ans = []
s << gets.to_s
q = gets.to_i
cnt = 0
q.times do
  t,f,c = gets.chomp.split(' ')
  if t == "1"
    cnt += 1
  else
    if f == "1"
      if cnt.odd?
        s << c
      else
        s.unshift(c)
      end
    else
      if cnt.odd?
        s.unshift(c)
      else
        s << c
      end
    end
  end
end
s.each do |n|
  ans << n.chomp
end
puts cnt.odd? ? ans.reverse.join : ans.join