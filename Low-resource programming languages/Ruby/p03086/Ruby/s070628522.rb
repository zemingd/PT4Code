s = gets.strip
result = []
tmp = ''
p s.chars
s.chars.each_with_index do |char, i|
  if ['A', 'C', 'G', 'T'].include?(char)
    tmp += char
  else
    result << tmp
    tmp = ''
  end
end
puts result.max.size