cnt = gets.to_i
max = 10**18

inputs = gets.split.map(&:to_i).sort.reverse
if inputs.include?(0)
  p -1
else
  result = 1
  for i in 0..cnt-1
  	result *= inputs[i]
  end
  result = result > max ? -1 : result
end
p result