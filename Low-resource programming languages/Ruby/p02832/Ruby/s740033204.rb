n = gets.to_i
a = gets.split().map(&:to_i)
number = 1

ans = 0

a.each do |i|
  if i == number
    number += 1
  else
    ans += 1
  end
end

puts ans == n ? -1 : ans