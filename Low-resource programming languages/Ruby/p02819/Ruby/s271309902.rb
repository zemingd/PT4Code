require 'prime'

x = gets.to_i

while true do
  if x.prime?
    puts x
    exit
  end
  x += 1
end