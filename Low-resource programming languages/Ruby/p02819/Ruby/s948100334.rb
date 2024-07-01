require 'prime'
x = gets.chomp.to_i

while true
  if Prime.prime?(x)
    p x
    exit
  end
  x += 1
end
