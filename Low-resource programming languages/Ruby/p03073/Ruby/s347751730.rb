s = gets.chomp.to_s
n = s.size
turn = 0
for i in 0..n-1 do
  if i%2 != s[i].to_i
    turn += 1
  end
end
puts [turn,n-turn].min