S = gets.chomp.chars
s = S[0]
ans = "Good"

1.upto(3) do |n|
  if s == S[n]
    ans = "Bad"
    break
  end
  s = S[n]
end

puts ans