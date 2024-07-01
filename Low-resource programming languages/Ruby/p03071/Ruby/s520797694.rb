bs = gets.split.map {|e| e.to_i }

score = 0
if bs[0] > bs[1]
  score += bs[0]
  bs[0] -= 1
else
  score += bs[1]
  bs[1] -= 1
end
if bs[0] > bs[1]
  score += bs[0]
  bs[0] -= 1
else
  score += bs[1]
  bs[1] -= 1
end
puts score
