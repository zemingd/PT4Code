input = gets.chomp.split('')

c = 0
max = 0

input.each do |i|
  if i == 'R'
    c += 1
  else
    max = (max >= c) ? max : c
    c = 0
  end
end
puts (max >= c) ? max : c