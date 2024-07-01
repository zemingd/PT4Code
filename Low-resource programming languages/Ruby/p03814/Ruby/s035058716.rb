S = gets.split("")
s = S
s.each.with_index do |st, i|
  if st == "A" then
    $start = i
    break
  end
end

s.reverse!
  
  s.each.with_index do |en, i|
  if en == "Z" then
  $ending = i
    break
  end
end

end_index = S.length - $ending
p end_index - $start 