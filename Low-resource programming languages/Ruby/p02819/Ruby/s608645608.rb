x = gets.to_i

require 'prime'
while true do
  if Prime.prime?(x)
    puts x
    exit 0
  end
  x += 1
end
