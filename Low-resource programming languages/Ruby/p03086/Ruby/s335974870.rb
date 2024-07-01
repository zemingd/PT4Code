s = gets.chomp.chars
ans = 0
tmp = 0
s.each do |c|
  if ['A', 'C', 'G', 'T'].include?(c)
    tmp += 1
  else
    tmp = 0
  end
  ans = tmp if ans < tmp
end
puts ans