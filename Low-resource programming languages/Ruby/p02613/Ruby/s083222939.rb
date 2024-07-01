n=gets.to_i
s=Array.new(4,0)
n.times do
  c=gets[0]
  case c
  when 'A'
    s[0]+=1
  when 'W'
    s[1]+=1
  when 'T'
    s[2]+=1
  when 'R'
    s[3]+=1
  end
end

print <<"EOS"
AC x #{s[0]}
WA x #{s[1]}
TLE x #{s[2]}
RE x #{s[3]}
EOS