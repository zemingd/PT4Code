n = gets.chomp.to_i
inputs = gets.split.map(&:to_i)
reject = 0
temp = 1000000

(0...n).each do |i|
  _temp_1 = inputs[i]
  if temp < _temp_1
    reject += 1
  end
  temp = _temp_1
end

puts n - reject