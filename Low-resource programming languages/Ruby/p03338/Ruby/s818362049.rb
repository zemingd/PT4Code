n = gets.to_i
s = gets.chomp.chars

left = {}
right = {}
s.each { |c| right[c] = right[c].to_i + 1 }
('a'..'z').each { |c| left[c] = 0 }
('a'..'z').each { |c| right[c] = 0 if right[c].nil? }

ans = 0
cnt = 0
s.each do |c|
  b1 = left[c] > 0 && right[c] > 0
  left[c] += 1
  right[c] -= 1
  b2 = left[c] > 0 && right[c] > 0

  if !b1 && b2
    cnt += 1
  elsif b1 && !b2
    cnt -= 1
  end
  ans = cnt if ans < cnt
end
puts ans