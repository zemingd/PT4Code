s = gets.strip.chars.sort
t = gets.strip.chars.sort.reverse

s.each_with_index do |char, num|
  case char <=> t[num]
  when -1
    return p 'Yes'
  when 1
    return p 'No'
  end
end
puts s <=> t ? 'No' : 'Yes'