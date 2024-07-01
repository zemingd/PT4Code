input = STDIN.read.split("\n").map(&:chomp)
input.shift.to_i.times do
  a = input.shift.to_i
  b = input.shift.to_i

  if (sum = a + b) > 10**80
    puts 'overflow'
  else
    puts sum
  end
end