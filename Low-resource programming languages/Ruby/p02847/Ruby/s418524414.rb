# N = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp

case S
when 'SUN'
  p 7
when 'MON'
  p 6
when 'TUE' 
  p 5
when 'WED'
  p 4
when 'THU'
  p 3
when 'FRI'
  p 2
when 'SAT'
  p 1
end
