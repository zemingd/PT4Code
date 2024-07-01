s = gets.chomp
while true do
  if s.include?("dreamer")
    s.slice!("dreamer")
  elsif s.include?("dream")
    s.slice!("dream")
  elsif s.include?("eraser")
    s.slice!("eraser")
  elsif s.include?("erase")
    s.slice!("erase") 
  else
    break
  end
end

if s == ""
  p "YES"
else
  p "NO"
end