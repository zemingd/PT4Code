s = gets.chomp.split('')
n = 0
 
s.each do |c|
  if c == '+' then
    n += 1
  else
    n -= 1
  end
end
 
puts n.to_s