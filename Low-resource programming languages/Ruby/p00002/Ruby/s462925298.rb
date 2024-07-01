data_set = []
while data = gets
  numbers = data.split(' ')
  data_set << (numbers[0].to_i + numbers[1].to_i).to_s.length
end
puts data_set