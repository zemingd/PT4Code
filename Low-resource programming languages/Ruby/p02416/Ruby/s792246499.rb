loop do
  input = gets.chop.split('').map(&:to_i)
  if input.size == 1 && input[0] == 0
    break
  end
  puts input.inject(:+)
end

