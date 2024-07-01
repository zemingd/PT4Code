s = gets.strip
q = gets.to_i

is_reverse = false
header = []
footer = []

q.times do
  q, t, c = gets.split(' ')
  if q.to_i == 1 then
    is_reverse = !is_reverse
  elsif t.to_i == 1 then
    if is_reverse then
      footer.push(c.strip)
    else
      header.push(c.strip)
    end
  else
    if is_reverse then
      header.push(c.strip)
    else
      footer.push(c.strip)
    end
  end
end

s = header.join.reverse + s + footer.join

if is_reverse then
	puts s.reverse
else
	puts s
end
