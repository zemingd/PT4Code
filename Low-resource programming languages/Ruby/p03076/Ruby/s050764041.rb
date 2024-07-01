a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

array = [a, b, c, d, e]

tmp = array.map do |t|
  if t % 10 == 0
    0
  else
    10 - t % 10
  end
end

max = tmp.max

sum = 0
tmp.each_with_index do |t, i|
  sum += array[i] + t
end

puts sum - max
