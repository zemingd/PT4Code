S = gets.chomp.chars
ANS = []
S.each do |s|
  if s == '1' || s == '0'
    ANS << s
  else
    ANS.pop
  end
end
puts ANS.join
