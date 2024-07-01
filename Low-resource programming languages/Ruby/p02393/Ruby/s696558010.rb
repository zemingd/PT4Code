a,b,c = gets.chomp.split(" ").map{|x| x.to_i}
if a>b
  a,b = b,a
end

if b>c
  b,c = c,b
  if a>b
    a,b = b,a
  end
end

print "#{a} #{b} #{c}\n"
