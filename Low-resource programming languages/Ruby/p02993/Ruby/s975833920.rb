s = gets.chomp.split("")

sss = ''
ssss = ''
s.each do |ss|
  ssss = 'Bad' if ss == sss
  sss = ss
end

if ssss == 'Bad'
  p 'Bad'
else
  p 'Good'
end