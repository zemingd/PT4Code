s = gets.chomp.split("")
k = gets.to_i
after = []
while k > 0 && !s.empty? do
  if must_change_index = s.find_index { |c| c.ord + k >= 123 }
    k -= 123 - s[must_change_index].ord
    s[must_change_index] = "a"
    after += s.slice!(0, must_change_index + 1)
  else
    break
  end
end
after += s
k %= 26
after[after.size - 1] = (after[after.size - 1].ord + k).chr
puts after.join("")
