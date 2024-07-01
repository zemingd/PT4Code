n = gets.to_i
array = gets.chomp.split.map(&:to_i)

even = array.select(&:even?)

ans = 'APPROVED'

for i in 0..(even.length - 1)
  if !(even[i] % 3 == 0 || even[i] % 5 == 0)
    ans = 'DENIED'
  end
end

puts ans
