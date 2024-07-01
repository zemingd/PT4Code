n = gets.to_i

inputs = n.times.map do |index|
  input = gets.split
  [input[0], input[1].to_i * -1, index + 1]
end

inputs.sort!.each {|input| puts input[2]}