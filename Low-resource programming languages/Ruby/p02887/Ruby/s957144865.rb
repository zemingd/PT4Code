N = gets.to_i
S = gets.chomp.chars
ans = 1
prev = S[0]
(S[1..-1] || []).each.with_index do |ch, i|
  if prev != ch
    ans += 1
    prev = ch
  end
end
puts ans
