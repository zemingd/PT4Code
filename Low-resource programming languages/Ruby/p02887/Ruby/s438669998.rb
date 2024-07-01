n=gets.to_i
s=gets.chomp.split("")
index = 0
loop do
  break if s.length < index + 1
  if s[index] == s[index+1]
    s.delete_at(index+1) 
  else
    index += 1
  end
end
puts s.length