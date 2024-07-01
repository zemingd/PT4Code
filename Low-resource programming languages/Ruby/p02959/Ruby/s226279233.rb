n = gets.chomp.to_i
a = gets.chomp.split.push(0).map(&:to_i)
b = gets.chomp.split.push(0).map(&:to_i)

monsters = (0..n).inject(0) do |counter, i|
  if a[i] <= b[i]
    c = b[i] - a[i]
    if a[i+1] > c
      a[i+1] -= c
    else
      c = a[i+1]
      a[i+1] = 0
    end
    counter += a[i] + c
  else
    counter += b[i]
  end
end

puts monsters