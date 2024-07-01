s = gets
abc = %w(a b c)
ans = true
abc.each do |i|
  ans = false unless s.include?(i)
  break unless ans
end

if ans
  printf 'Yes'
else
  printf 'No'
end