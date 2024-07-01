
def mirror?(s)
  (s.size / 2).times.all?{|i| s[i] == s[s.size - 1 - i]}
end

S = gets.chomp
L = S.size / 2
puts S.size.odd? && mirror?(S) && mirror?(S[0,L]) && mirror?(S[L + 1, L]) ? "Yes" : "No"

