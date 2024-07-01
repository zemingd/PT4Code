N = gets.to_i
S = gets.chomp

T = S.size / 2

if S == S[0..T-1]  * 2
  puts "Yes"
else S.to_i.odd?
  puts "NO"
end

