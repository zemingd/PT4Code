buf = $stdin.gets.chop

res = false
if buf == buf.reverse then
  i = ((buf.length-1)/2).floor
p buf[0,i]
  if buf[0,i] == buf[0,i].reverse then
    i = ((buf.length+2)/2).ceil
    if buf[i..-1] == buf[i..-1].reverse then
      res = true
    end
  end
end

puts res ? "Yes" : "No"