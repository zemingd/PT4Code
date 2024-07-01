loop do
  num = gets.to_i
  break if num.zero?

  puts num.to_s.split(//).map(&:to_i).inject(:+)
end