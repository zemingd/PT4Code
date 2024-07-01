n = gets.to_i
a = gets.split.map(&:to_i)
ap = true
n.times do |i|
  if a[i] % 2 == 0
    if a[i] % 3 != 0 && a[i] % 5 != 0
      ap = false
    end
  end
end
puts ap ? 'APPROVED' : 'DENIED'
