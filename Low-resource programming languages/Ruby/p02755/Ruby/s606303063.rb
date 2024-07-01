A, B = gets.split.map(&:to_i)

base_a = (A / 0.08).to_i
base_a1 = ((A + 1)/ 0.08).ceil - 1

base_b = (B / 0.10).to_i
base_b1 = ((B + 1)/ 0.10).ceil - 1

# p base_a, base_a1, base_b, base_b1

min = [base_a, base_b].max
max = [base_a1, base_b1].min

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
