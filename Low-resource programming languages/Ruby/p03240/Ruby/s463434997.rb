N = gets.to_i
S = []
N.times{
  S << gets.chomp.split(" ").map(&:to_i)
}

ans = []
X, Y, H = S.sort_by{|x, y, h| h}[-1]
(0..100).each{|i|
  (0..100).each{|j|
    wk = (i - X).abs + (j - Y).abs + H
    ans = [i, j, wk]
    (0...N).each{|k|
      if S[k][2] == 0 then
        (ans.clear; break) if wk - (i - S[k][0]).abs - (j - S[k][1]).abs > 0
      else
        (ans.clear; break) if wk - (i - S[k][0]).abs - (j - S[k][1]).abs != S[k][2]
      end
    }
    break if not ans.empty?
  }
  break if not ans.empty?
}

puts ans.join(" ")
