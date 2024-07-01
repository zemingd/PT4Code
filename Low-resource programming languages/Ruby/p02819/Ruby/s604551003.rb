require 'prime'

x = gets.to_i

if x == 2
  puts 2
  exit 0
end
if x%2 == 0
  x += 1
end

while true
  if Prime.prime?(x)
    puts x
    exit 0
  end

  x += 2
end
