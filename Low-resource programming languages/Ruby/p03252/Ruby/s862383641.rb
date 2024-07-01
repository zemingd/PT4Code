S = gets.chomp
T = gets.chomp
N = S.length
def check(s, t, back: false)
  return true if back && S.chars.uniq.length < 26
  ('a'..'z').all?{|c|
    idxs = (0...N).select{|i| s[i] == c}
    next true if idxs.empty?
    c2 = t[idxs[0]]
    idxs.all?{|i| t[i] == c2}
  }
end
ans = check(S, T) && check(T, S, back: true)
puts ans ? 'Yes' : 'No'