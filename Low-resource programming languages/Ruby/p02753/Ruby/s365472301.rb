S = gets.chomp.chars
puts (if S.uniq.size == 1
  'No'
else
  'Yes'
end)