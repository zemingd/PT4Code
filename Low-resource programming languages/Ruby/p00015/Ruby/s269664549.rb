num_inputs = STDIN.readline.to_i
num_inputs.times do
  x = STDIN.readline.to_i
  y = STDIN.readline.to_i
  s = x + y
  if s.to_s.length > 80 then puts "overflow" else puts s end
end