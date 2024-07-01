s = $stdin.gets.chop
q = $stdin.gets.to_i
fwd = true
sp = []; st = []
q.times do |i|
  case $stdin.gets
  when /^1/
    fwd = !fwd
  when /^2 (1|2) (.)/
    if (($1 == "1") ^ !fwd) then
      sp.prepend $2
    else
      st.push $2
    end
  end
end
if fwd then
  puts s.join
else
  print st.join
  print s.reverse
  puts sp.join
end