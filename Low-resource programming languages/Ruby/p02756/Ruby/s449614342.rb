index = 1
s =  $stdin.gets.chomp
q =  $stdin.gets.chomp
a = Array.new()
a.push s
is_reverse = false
while line = $stdin.gets
  t, f, c = line.chomp.split.map{|a| a}
  if t == '1' then
    is_reverse = !is_reverse
  else
    if f == '1' then
      if is_reverse then
        a.push c
      else
        a.unshift c
      end
    else
      if is_reverse then
        a.unshift c
      else
        a.push c
      end
    end
  end
end
s = a.join
s.reverse! if is_reverse
puts s