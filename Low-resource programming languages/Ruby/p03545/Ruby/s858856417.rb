def f(e)
  a,b,c,d = e
  case 7
  when a+b+c+d
    "#{a}+#{b}+#{c}+#{d}"
  when a+b+c-d
    "#{a}+#{b}+#{c}-#{d}"
  when a+b-c+d
    "#{a}+#{b}-#{c}+#{d}"
  when a+b-c-d
    "#{a}+#{b}-#{c}-#{d}"
  when a-b+c+d
    "#{a}-#{b}+#{c}+#{d}"
  when a-b+c-d
    "#{a}-#{b}+#{c}-#{d}"
  when a-b-c+d
    "#{a}-#{b}-#{c}+#{d}"
  when a-b-c-d
    "#{a}-#{b}-#{c}-#{d}"
  end
end
puts f(gets.chop.split('').map(&:to_i)) + '=7'
