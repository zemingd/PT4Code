def calc(a,b)

  if (a * b) % 2 == 0 
    return "Even"
  else
    return "Odd"
  end
end

a = gets.to_i
b = gets.to_i

puts calc(a,b)