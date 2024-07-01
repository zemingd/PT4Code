input = gets.chomp;
inputs = [];
while input.length >= 3
  inputs.push(input.scan(/\d\d\d/)[0]);
  input.slice!(0)
end

#p inputs
min = 753
inputs.each {|n|
  if (n.to_i - 753).abs < min
    min = (n.to_i - 753).abs
  end
}

puts min