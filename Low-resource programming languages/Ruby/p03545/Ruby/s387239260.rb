abcd = gets.chomp.chars
ans = ''
[true, false].repeated_permutation 3 do |b|
  h = []
  h << abcd[0]
  for i in 0..2
    h << '+' if b[i]
    h << '-' if !b[i]
    h << abcd[i + 1]
  end
  if eval(h.join) == 7
    ans = "#{h.join}=7"
    break
  end
end
puts ans