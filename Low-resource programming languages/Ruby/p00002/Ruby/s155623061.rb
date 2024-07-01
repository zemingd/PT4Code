loop do
  input = gets
  break if input.nil?

  a, b = input.split.map{|i| i.to_i}
  puts (a + b).to_s.length
end