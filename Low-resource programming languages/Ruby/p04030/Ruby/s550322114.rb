s = gets.chomp
t = ''
s.split(' ').each do |c|
  case c
  when '0' then
    t = t + '0'
  when '1' then
    t = t + '1'
  when 'B' then
    t.chop!
  end
end
puts t