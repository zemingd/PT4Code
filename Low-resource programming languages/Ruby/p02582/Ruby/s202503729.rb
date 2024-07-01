f = false
ans = 0
gets.chomp.split('').each do |s|
  if s == 'R'
    if f
      ans += 1
    else
      f = true
      ans = 1
    end
  else
    f = false
  end
end
puts ans
