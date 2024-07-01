s = gets.split('').map(&:to_i)
k = gets.to_i

s.each do |n|
  if n == 1
    k -= 1
    break if k == 0
  else
    puts n
    exit 0
  end
end

puts 1