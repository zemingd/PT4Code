strings = []
strings << gets.chomp.to_s
q = gets.to_i
q.times do
  inputs = gets.split.map(&:to_s)
  if inputs.size == 1
    strings.reverse!
  else
    if inputs[1] == "1"
      strings.unshift(inputs[2])
    else
      strings.push(inputs[2])
    end
  end
end
puts strings.join
