n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a.sort!

break_i = 0
i = 0
while i < n-1 do
  if a[i+1] <= 0
    a[i] *= -1
    a[i+1] *= -1
  else
    break_i = i
    break
  end
  i += 2
  # p a
end

if n.odd?

end

ans = a.inject(&:+)
a[break_i] *= -1
a[break_i+1] *= -1
ans = [ans, a.inject(&:+)].max


puts ans
