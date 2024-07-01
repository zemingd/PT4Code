n = gets.to_i
array = gets.split.map(&:to_i)
one_to_n = (1..n).to_a
count = 0
ans = 'NO'

(0..n-1).each do |i|
  if array[i] != one_to_n[i]
    count += 1
  end
end

if count <= 2
  ans = 'YES'
end

puts ans