n = gets.chomp.to_i
arr = gets.chomp.split(' ')

result = 1
arr.each do |num|
  result = result * num.to_i
  if result == 0
    result = 0
    break
  elsif result > 10**18 && !arr.include?('0')
    result = -1
    break
  end
end

puts result