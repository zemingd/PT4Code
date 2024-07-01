n = gets.to_i
sum = 0

nb = n
until nb == 0
  sum += nb%10
  nb /= 10
end

puts n%sum == 0 ? "Yes" : "No"