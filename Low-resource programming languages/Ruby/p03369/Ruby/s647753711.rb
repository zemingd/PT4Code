res = 700
line=gets.chomp.split("").each do |n|
  res+=100 if n=="o"
end
puts res