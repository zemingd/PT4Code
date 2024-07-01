attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

s = attrs[0][0]
Q = attrs[1][0].to_i

Q.times do |i|
  t, f, c = attrs[2+i].map{|a| a}
  if t == '1' then
    s.reverse!
  else
    if f == '1' then
      s = c + s
    else
      s = s + c
    end
  end
end
puts s