def addition(a,b,symbol)
  p symbol == "+" ? a.to_i + b.to_i : a.to_i - b.to_i
end

a, symbol, b = gets.chomp.split(" ")
addition(a,b,symbol)