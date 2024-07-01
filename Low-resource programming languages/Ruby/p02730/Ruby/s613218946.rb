S = gets.strip

f = ->(s){s == s.reverse}
n = S.length
puts (f[S] && f[S[0 ... (n - 1)/2]] && f[S[(n + 3)/2 - 1 ... n]]) ? 'Yes' : 'No'