s = gets.chomp
abc = %w(a b c)
ans = true
abc.each do |i|
  ans = false unless s.include?(i)
end

if ans
  p 'Yes'
else
  p 'No'
end