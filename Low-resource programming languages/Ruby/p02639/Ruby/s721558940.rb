a = gets.split.map(&:to_i)
answer = nil
for i in 0..4
  answer = i + 1 if a[i] == 0
end
puts answer
