require 'prime'
n = gets.to_i
loop do
  if Prime.prime?(n)
    puts n
    exit
  end
  n += 1
end