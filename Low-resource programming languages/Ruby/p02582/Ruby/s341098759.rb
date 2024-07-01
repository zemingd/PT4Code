t = gets

if t.include? "SSS"
  p 3
elsif t.include? "SS"
  p 2
elsif t.include? "S"
  p 1
else
  p 0
end