K = gets.to_i
odd = 0
even = 0
if K.even? then
    even = odd = K/2
else
    even = K/2
    odd = K/2 + 1
end
puts even * odd