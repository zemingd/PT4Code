s = gets
n = s.length - 1
turn = 0
for i in 0..n do
  if i%2 != s[i].to_i
    turn = turn + 1
  end
end
puts [turn,n-turn].min