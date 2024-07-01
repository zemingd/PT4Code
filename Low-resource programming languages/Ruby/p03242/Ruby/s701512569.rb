n=gets.chomp
for i in 0..n.length-1 do
  case n[i]
  when "1" then
    print "9"
  when "9" then
    print "1"
  end
end