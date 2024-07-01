N = gets.to_i

hash = Hash.new(0)

N.times do
  d = gets.chomp.chars.sort.join('')
  hash[d] += 1
end

def factorial(number)
  if number.zero?
    1
  else
    number * factorial(number - 1)
  end
end

result = 0
hash.each do |_k, v|
  next if v <= 1

  result += factorial(v) / (2 * factorial(v - 2))
end
p result
