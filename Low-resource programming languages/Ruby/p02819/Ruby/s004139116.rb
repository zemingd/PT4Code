require 'prime'

n = gets.to_i
i = n
prime_num = []
for i in n..10 ** 6
  if i.prime?
    prime_num.push(i)
    break
  end
end

puts prime_num
  