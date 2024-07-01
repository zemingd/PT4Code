str = gets.chomp.chars
anum = 0
znum = 0
str.each_with_index do |s, i|
  if s == "A"
    anum = i 
  end

  if s == "Z"
    znum = i
  end
end

puts znum - anum + 1