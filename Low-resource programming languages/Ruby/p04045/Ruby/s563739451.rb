n, k = gets.split.map(&:to_i)
dislikes = gets.chomp.split
ans = nil
while ans == nil
  if n.to_s.chars.any? { |char| dislikes.include?(char) }
    n += 1
  else
    ans = n
  end
end
puts ans
