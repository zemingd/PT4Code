require 'prime'
x = gets.chomp.to_i

while true do
  if Prime.prime?(x)
    break
  end
  x += 1
end

puts x