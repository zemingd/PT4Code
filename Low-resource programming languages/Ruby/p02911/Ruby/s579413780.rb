n, k, q = gets.chop.split.map(&:to_i)

correct = Array.new(n, 0)
for num in 1..q do
  a = gets.chop.to_i

  correct[a - 1] += 1
end

border = q - k
for c in correct do
  if border < c
    puts 'Yes'
  else
    puts 'No'
  end
end
