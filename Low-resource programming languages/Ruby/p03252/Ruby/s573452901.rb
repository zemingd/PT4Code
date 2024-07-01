S = gets.chomp
T = gets.chomp
N = S.length
def check(s, t)
  ('a'..'z').all?{|c|
    c2 = nil
    (0...N).all?{|i|
      next true if s[i] != c
      c2 ||= t[i]
      t[i] == c2
    }
  }
end
ans = check(S, T) && check(T, S)
puts ans ? 'Yes' : 'No'