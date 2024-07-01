n = gets.to_i
as = []
5.times do
  as << gets.to_i
end

min = as.min
if n > min
  ans = 5 + ((n / min) + n%min) -1
else
  ans = 5
end

puts ans

# require 'irb'
# binding.irb
