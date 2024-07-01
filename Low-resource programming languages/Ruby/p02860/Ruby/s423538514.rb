N = gets.to_i
S = gets
if N%2!=0 then
  puts "No"
else
  half = N/2
  s1 = S[0..half-1]
  s2 = S[half..N-1]
  puts s1==s2 ? "Yes" : "No"
end
