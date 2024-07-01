s = gets.chomp.chars
q = gets.to_i
querys = q.times.map{gets.chomp.split}
rev_cnt = 0
querys.each do |t,f,c|
  if t == "1"
    rev_cnt += 1
  else
    if rev_cnt.even?
      if f == "1"
        s.unshift(c)
      else
        s.push(c)
      end
    else
      if f == "1"
        s.push(c)
      else
        s.unshift(c)
      end
    end
  end
end
if rev_cnt.odd?
  s.reverse!
end
puts s.join