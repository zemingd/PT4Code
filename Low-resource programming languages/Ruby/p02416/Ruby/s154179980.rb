loop do
  num = gets.to_i
  break if num.zero?
  num = num.to_s.split('').map(&:to_i)
  puts num.inject(:+)
end
