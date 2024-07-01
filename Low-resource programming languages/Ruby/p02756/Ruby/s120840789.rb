s = gets.chomp.each_char.to_a
gets
r = false
STDIN.each do |q|
  q = q.chomp.split
  if q[0] == "1"
    r = !r
  else
    if((q[1] == "1" && !r) || q[1] == "2" && r)
      s.unshift(q[2])
    else
      s.push(q[2])
    end
  end
end

puts(r ? s.reverse.join : s.join)