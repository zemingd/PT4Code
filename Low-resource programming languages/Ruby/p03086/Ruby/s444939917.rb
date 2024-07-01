S = gets.chomp

ans, wk = [0, 0]
(0...S.size).each{|i|
  if ['A', 'C', 'G', 'T'].include?(S[i]) then
    wk += 1
  else
    ans = wk if ans < wk
    wk = 0
  end
}
ans = wk if ans < wk

puts ans
