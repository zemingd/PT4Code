num = gets.to_i
peoples = gets.split(' ').map(&:to_i)

result = 10000000

(1..100).each do |x|
  total_effort = peoples.inject(0) { |result, people| result + (people - x) ** 2 }
  result = total_effort if result > total_effort
end

puts result
