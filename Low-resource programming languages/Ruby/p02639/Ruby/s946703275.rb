N = gets.strip.split(' ').map(&:to_i)
sum = (1+2+3+4+5)
N.each do |i|
  sum -= i
end
puts sum