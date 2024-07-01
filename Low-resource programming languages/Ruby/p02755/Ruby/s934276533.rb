A, B = gets.split.map(&:to_i)

base_a = (A / 0.08)
base_b = (B / 0.10)

if base_a > base_b
  max = base_a.to_i
  min = base_b.to_i
else
  min = base_a.ceil
  max = base_b.to_i
end

# p max, min
# p (A / 0.08), (B / 0.10)

ans = []
(min..max).to_a.each do |i|
  match_a = (i * 0.08).floor == A
  match_b = (i * 0.1).floor == B

  # p "#{i} 0.08 #{A} -> #{i * 0.08} {B} -> #{i * 0.1}"

  if match_a && match_b
    ans << i
  end
end

if ans.empty?
  puts -1
else
  puts ans.min
end
