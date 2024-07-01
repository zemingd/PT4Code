require 'prime'

x = gets.to_i

while true
  if Prime.prime?(x)
    puts x
    exit 0
  end

  x += 1
end
