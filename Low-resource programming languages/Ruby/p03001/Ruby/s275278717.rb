a,b,c,d = gets.chomp.split(' ').map(&:to_f)
sq = (a*b)/2
flg = 
if c != 0 && d != 0
  if a/b == c/d
    1
  else 
    0
  end
elsif c == 0 && d == 0
  1
else 
  if b/a ==d/c
    1
  else 
    0
  end 
end
puts "#{sq} #{flg}"


