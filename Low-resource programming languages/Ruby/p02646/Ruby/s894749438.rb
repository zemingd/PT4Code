(0..t).each do |i|
  if (i * v) + a == (i * w) + b
    puts 'YES'
    break
  end
end
puts 'NO'