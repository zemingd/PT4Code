A, B = gets.split.map(&:to_i)

max = (A / 0.08).to_i
min = (B / 0.10).to_i

# p max, min
# p (A / 0.08), (B / 0.10)

ans = []
(min..max).to_a.each do |i|
  match_a = (i * 0.08).floor == A
  match_b = (i * 0.1).floor == B

  if match_a && match_b
    ans << i
  end
end

if ans.empty?
  puts -1
else
  puts ans.min
end
