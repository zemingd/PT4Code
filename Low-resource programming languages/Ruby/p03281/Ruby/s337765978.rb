require 'prime'

a = gets.to_i
result = 0
(1..a).each do |b|
  next if b % 2 == 0
  next if Prime.instance.prime?(b)
  i = 0
  (1..b).each do |c|
    next if b % 2 == 0
    next if Prime.instance.prime?(b)
    i+=1 if b % c == 0
  end
  result+=1 if i == 8
end
puts result