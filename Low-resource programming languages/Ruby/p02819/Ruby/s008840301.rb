require 'prime'

x = gets.chomp.to_i

loop do
  if x.prime?
    puts(x)
    exit
  end
  x += 1
end