t = gets

if t.include? "RRR"
  p 3
elsif t.include? "RR"
  p 2
elsif t.include? "R"
  p 1
else
  p 0
end