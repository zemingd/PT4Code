while true
  input = gets
  break if input.to_i.zero?
  puts input.chars.map{|i| i.to_i }.sum
end
