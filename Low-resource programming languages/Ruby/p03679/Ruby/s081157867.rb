X,A,B = gets.split.map(&:to_i)
if B-A <= 0
  puts 'delicous'
elsif B-A <= X
  puts 'safe'
else
  puts 'dangerous'
end