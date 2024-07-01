input = STDIN.read.split("\n").map(&:chomp)
input.shift.to_i.times do
  a = input.shift.to_i
  b = input.shift.to_i

  sum = a + b
  puts(sum >= 10**80 ? 'overflow' : sum)
  # if (sum = a + b) >= 10**80
  #   puts 'overflow'
  # else
  #   puts sum
  # end
end