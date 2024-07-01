str = gets.chomp.chars
MAXNUM = 1000000

anum = MAXNUM
znum = -MAXNUM

str.each_with_index do |s, i|
  if s == "A" && i < anum
    anum = i 
  end

  if s == "Z" && i > znum
    znum = i
  end
end

puts znum - anum + 1