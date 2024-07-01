n,k = gets.chomp.split(" ").map(&:to_i)
v = gets.chomp.split(" ").map(&:to_i)
max = 0
for a in 0..k
  for b in 0..k-a
    values = []
    left = 0
    right = n
    cnt = 0
    a.times do
      if left < n
        left += 1
        values << v[left-1]
        cnt += 1
      end
    end
    b.times do
      if right > left
        right -= 1
        values << v[right]
        cnt += 1
      end
    end
    rest = k-cnt
    values = values.sort
    rest.times do |i|
      if i+1 <= values.length
        values[i] = 0 if values[i] < 0
      end
    end
    if values.length != 0
      max = [max, values.inject(:+)].max
    end
  end
end
puts max