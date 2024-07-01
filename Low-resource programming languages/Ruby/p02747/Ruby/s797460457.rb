S = gets.chomp

if S.length % 2 == 1 then
  print "No"
else
  ans = "Yes"
  for i in 1..S.length / 2 do
    if S[2i-2] != "h" or S[2i-1] != "i" then
      ans = "No"
    end
  end
  print ans
end