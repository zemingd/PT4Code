line = gets.split("")
text = "No"
line.each do |f|
  if f === "9" then
    text = "Yes"
  end
end
puts text