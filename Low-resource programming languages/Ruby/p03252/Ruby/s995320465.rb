S = gets.chomp
T = gets.chomp

start = Array.new(26) { -1 }
goal = Array.new(26) { -1 }

impossibble = false
0.upto(S.size - 1) do |i|
  s = S[i].ord - 'a'.ord
  t = T[i].ord - 'a'.ord

  if start[s] != -1 || goal[t] != -1
    if start[s] != t || goal[t] != s
      impossibble = true
      break
    end
  end

  start[s] = t
  goal[t] = s
end

if impossibble
  puts 'No'
else
  puts 'Yes'
end
