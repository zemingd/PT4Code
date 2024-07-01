s = gets.chomp
ans = 'Good'
if s.include?('00') || s.include?('11') || s.include?('22') || s.include?('33') || s.include?('44') || s.include?('55') || s.include?('66') || s.include?('77') || s.include?('88') || s.include?('99')
  ans = 'Bad'
end
puts ans
