require 'prime'

a, b = gets.split(" ").map(&:to_i)
a_result = []
a_result << 1
b_result = []
b_result << 1

a_array = []
a.prime_division.each do |a, b|
  b.times do
    a_array << a
  end
end

(1..a_array.length).each do |i|
  a_array.combination(i) do |array|
    a_result << array.inject{ |a, b| a *= b }
  end
end

b_array = []
b.prime_division.each do |a, b|
  b.times do
    b_array << a
  end
end

(1..b_array.length).each do |i|
  b_array.combination(i) do |array|
    b_result << array.inject{ |a, b| a *= b }
  end
end

result = a_result.uniq & b_result.uniq

count = 0
result.length.downto(1) do |i|
  flag = true
  if i == 0
    break
  end

  result.combination(i) do |array|
    if array.inject{ |a, b| a.gcd(b) } == 1
      count = array.length
      flag = false
      break
    end
  end

  unless flag
    break
  end
end

puts count