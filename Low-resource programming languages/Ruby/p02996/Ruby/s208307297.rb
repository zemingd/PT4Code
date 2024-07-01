gets
q=$<.map{|s|s.split.map &:to_i}.map{|s|[s[1],s[0]]}
#i=0
#q.sort_by! {|v| [v, i += 1] }
q.sort!.reverse!
t = q[0][0]

q.each do |e|
  t = e[0] if t >= e[0]
  t -= e[1]
end

if t < 0
  puts 'No'
else
  puts 'Yes'
end
