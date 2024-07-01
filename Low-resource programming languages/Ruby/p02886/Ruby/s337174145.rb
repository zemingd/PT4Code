result = 0
N = gets.chomp.to_i
inputs = gets.chomp.split(" ")

while inputs.length > 1 do
  ele = inputs[0].to_i
  inputs.shift
  inputs.each do |e|
    result += ele * e.to_i
  end
end

puts result