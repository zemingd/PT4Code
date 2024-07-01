s = gets.chomp
t = ""
while s != ""
  if s.chr == "0"
    t += "0"
  elsif s.chr == "1"
    t += "1"
  elsif t != ""
    t.slice!(-1)
  end
  s.slice!(0)
end
puts t