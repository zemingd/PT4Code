
a, b = gets.chomp.split($;).map(&:to_i)

result = -1

for i in 1..1300
  tax8 = i * 8 / 100
  tax10 = i * 10 / 100
  if tax8 == a and tax10 == b
    result = i
    break
  end
end

puts result