S = gets.chomp
T = gets.chomp

SW = Hash.new{|h, k| h[k] = Array.new}
(0...S.size).each{|i| SW[S[i]] << i}

ans = 0
po = 0
(0...T.size).each{|i|
  (ans = -1; po = 0; break) if not SW.key?(T[i])
  a = SW[T[i]].bsearch{|x| po <= x}
  if a.nil? then
    ans += S.size
    po = SW[T[i]][0] + 1
  else
    po = a + 1
  end
}

puts ans + po
