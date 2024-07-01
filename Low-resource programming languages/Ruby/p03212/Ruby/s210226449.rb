n = gets.to_i

number = 357
cnt = 0

while number <= n
  if number.to_s.split("").uniq.sort.map(&:to_i) == [3,5,7]
    cnt += 1
  end
  number += 1
end

puts cnt