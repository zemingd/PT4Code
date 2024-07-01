N = gets.to_i
W = N.times.map { gets.chomp }

success = true
checked = Hash.new

W.each_cons(2).each do |a, b|
  if checked[a]
    success = false
    break
  end

  checked[a] = true

  if a[-1] != b[0]
    success = false
    break
  end
end

if success && !checked[W.last]
  puts 'Yes'
else
  puts 'No'
end
