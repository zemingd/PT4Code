S = gets.chomp
T = gets.chomp

SW = Hash.new{|h, k| h[k] = Array.new}
(0...S.size).each{|i| SW[S[i]] << i}

ans = 0
po = 0
(0...T.size).each{|i|
  (ans = -1; break) if not SW.key?(T[i])
  a = SW[T[i]].select{|j| j >= po}
  if a.empty? then
    ans += S.size
    po = SW[T[i]][0]
  else
    po = a[0]
  end
}

puts ans == -1 ? ans : ans + po + 1
