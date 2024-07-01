num, str = gets.strip.split.map(&:to_i)
if num/2 == 0 then
  text = str.slice(0..num/2)
  full_text = text + text
  if full_text == str then
    print("Yes")
  else
    print("No")
  end
else
  print("No")
end