input = gets.chomp.split('')

c, max = 0
input.each do |i|
  if i == 'R'
    c += 1
  else
    max = c
    c = 0
  end
end
p max >= c ? max : c