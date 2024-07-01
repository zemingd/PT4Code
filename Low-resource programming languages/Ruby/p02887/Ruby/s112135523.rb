n = gets.to_i
s = gets.chomp.chars
count = s.length
s.each.with_index do |col,id|
  if s[id] == s[id+1]
    count -= 1
  end
end
puts count