n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

ans = 0
n.times do |i|
  if a[i] > b[i]
    ans += b[i]
  else
    ans += a[i]
    b[i] -= a[i]
    if a[i+1] > b[i]
      ans += b[i]
    else
      ans += a[i+1]
    end
  end
end

puts ans