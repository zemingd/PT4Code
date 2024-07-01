inputs = gets.to_s.split(" ")
number = inputs.length
array = []
desult = 0
for i in 0..number-1 do
  input = inputs[i]

  if input.match(/\+|\-|\/|\*/) == nil
    array << input.to_i
  end

  if input.match(/\+/) != nil
    desult = array.pop + array.pop
    array << desult
  end

  if input.match(/\-/) != nil
    desult = -1 * (array.pop - array.pop)
    array << desult
  end

  if input.match(/\//) != nil
    desult = 1 / (array.pop / array.pop)
    array << desult
  end

  if input.match(/\*/) != nil
    desult = array.pop * array.pop
    array << desult
  end
end

puts array[0]

