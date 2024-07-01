s = gets.chomp.split("")

sss = ''
ssss = ''
s.each do |ss|
  ssss = 'Bad' if ss == sss
  sss = ss
end

if ssss == 'Bad'
  puts 'Bad'
else
  puts 'Good'
end