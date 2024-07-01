input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
if a < b then
  res = "<"
else if a > b then
  res = ">"
else 
  res = "="
end
puts "a #{res} b"