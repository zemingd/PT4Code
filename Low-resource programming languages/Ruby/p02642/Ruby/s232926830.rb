n = gets.to_i
a = gets.split.map(&:to_i).sort
count = 0
n.times do |i|
  check = 0
  n.times do |j|
    next if i == j
    if a[i] % a[j] == 0
     check = 1
     break
    end
  end
  count += 1 if check == 0
end
puts count