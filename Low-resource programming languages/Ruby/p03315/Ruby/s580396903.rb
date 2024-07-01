i=0
gets.chomp.split("").map do |s|
  if s == "+" then i += 1
  else i -= 1
  end
end
print i