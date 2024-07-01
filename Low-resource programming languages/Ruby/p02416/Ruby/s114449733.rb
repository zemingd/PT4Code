loop do
  num = gets
  break if num == '0'
  num = num.split('').map(&:to_i)
  puts num.inject(:+)
end
