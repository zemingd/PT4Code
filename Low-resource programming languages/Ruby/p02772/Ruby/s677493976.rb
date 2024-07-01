n = gets
l = gets.split(" ").map(&:to_i)

c = 0
l.each{|i|
  if i %2 == 0 then
    if i %5 == 0 || i %3 == 0 then
    else
      c += 1
    end
  end
}

if c == 0 then
  print "APPROVED"
else
  print "DENIED"
end