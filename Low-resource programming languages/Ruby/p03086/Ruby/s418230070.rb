S = gets.chomp
a = %w(A T G C)
ans = max = 0

S.chars.each do |c|
  if a.include?(c)
    max += 1
    ans = max if ans < max
  else
    max = 0
  end
end

puts ans