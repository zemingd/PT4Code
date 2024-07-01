n = gets.to_i
ar = Array.new(n)

n.times do |i|
  ar[i] = gets.to_i
end

ar.sort!

sum = ar.reduce(:+)

if sum % 10 != 0
  puts sum
  exit 0
end

ar.each do |num|
  if num % 10 != 0
    puts sum - num
    exit 0
  end
end

puts 0