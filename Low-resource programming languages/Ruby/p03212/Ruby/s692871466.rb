N = gets.strip.to_i

def calc(s)
  return 0 if s.to_i > N
  if s.include?('3') && s.include?('5') && s.include?('7')
    calc(s + '3') + calc(s + '5') + calc(s + '7') + 1
  else
    calc(s + '3') + calc(s + '5') + calc(s + '7')
  end
end 

puts calc('0')
