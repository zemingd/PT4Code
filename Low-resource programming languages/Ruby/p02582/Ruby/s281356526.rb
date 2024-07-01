ss=gets.chomp.chars
c=ss.select{|s|s=="R"}.size
if c == 3
  p 3
elsif c == 1
  p 1
elsif c == 0
  p 0
else
  if ss[1] == "R"
    p 2
  else
    p 1
  end
end
