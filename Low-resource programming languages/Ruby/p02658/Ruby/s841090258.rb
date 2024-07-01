cnt = gets.to_i
max = 10**18

inputs = gets.split.map(&:to_i).sort.reverse
if inputs.include?(0)
  p -1
else
  result = 1
  for i in 0..cnt-1
  	result *= inputs[i]
  	if result > max
      result = -1
      break
    end
  end
  p result
end