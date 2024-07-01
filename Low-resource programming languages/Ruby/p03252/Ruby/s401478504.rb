S = gets.chomp
T = gets.chomp
N = S.length
def check(s, t)
  cs = {}
  (0...N).all?{|i|
    cs[s[i]] ||= t[i]
    t[i] == cs[s[i]]
  }
end
ans = check(S, T) && check(T, S)
puts ans ? 'Yes' : 'No'