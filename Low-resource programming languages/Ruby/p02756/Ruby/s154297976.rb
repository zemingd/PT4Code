S = gets.chomp
Q = gets

s, p = S, true
readlines.map{|l| l.split}.each do |t, f, c|
  if t == '1'
    p = !p
  else
    f = f == '1'
    c.reverse! unless p
    p^f ? s << c : s = c << s
  end
end
s.reverse! unless p
puts s