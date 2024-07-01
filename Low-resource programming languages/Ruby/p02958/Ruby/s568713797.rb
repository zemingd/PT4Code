n = gets.chomp.to_i
ps = gets.chomp.split.map(&:to_i)

possible = true
swapped = false
swappable = nil
(1..n).each do |n|
  p = ps[n - 1]
  next if p == n

  if swappable
    if !swapped && swappable[:got] == n && swappable[:want] == p
      swapped = true
      swappable = nil
    else
      possible = false
      break
    end
  else
    swappable = { got: p, want: n }
  end
end

puts possible ? 'YES' : 'NO'
