S = gets.chomp
T = gets.chomp

s = Hash.new{|h, k| h[k] = 0}
t = Hash.new{|h, k| h[k] = 0}
S.each_char{|ss| s[ss] += 1}
T.each_char{|tt| t[tt] += 1}
ans = 'Yes'
if s.size != t.size then
  ans = 'No'
else
  (0...S.size).each{|i|
    (ans = 'No'; break) if s[S[i]] != t[T[i]]
  }
end

puts ans
