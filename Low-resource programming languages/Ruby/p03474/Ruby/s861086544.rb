a,b = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp

if s =~ /^\d{#{a}}-\d{#{b}}/
  p 'Yes'
else
  p 'No'
end