(1...10001).each do |i|
  inputs = gets.split(' ').map(&:to_i)
  break if inputs.first == 0 && inputs.last == 0
  puts "#{inputs.min} #{inputs.max}"
end