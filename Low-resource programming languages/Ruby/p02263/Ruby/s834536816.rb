formula = gets.split()
stuck = []

formula.each do |value|
  if value =~ /^[0-9]+$/
    stuck.push(value.to_i)
  else
    num2 = stuck.pop
    num1 = stuck.pop
    case value
    when "+" then
      stuck.push(num1 + num2)
    when "-" then
      stuck.push(num1 - num2)
    when "*" then
      stuck.push(num1 * num2)
    else
    end
  end
end

puts stuck.pop
