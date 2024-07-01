s = gets.strip.split("").map(&:to_i)
ans = "Good"
s.each_with_index do |a, i|
  if s[i] == s[i + 1]
    ans ="Bad"
  end
end
puts ans