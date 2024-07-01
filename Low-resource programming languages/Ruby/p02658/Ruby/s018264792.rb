n = gets.to_i
a = gets.split(' ')
max = 10**18

sum = a[0].to_i
(n-1).times do |i|
  sum *= a[i+1].to_i
  if sum > max
    puts -1
    exit
  end
end

puts sum