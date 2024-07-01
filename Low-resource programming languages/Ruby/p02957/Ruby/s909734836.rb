a, b = gets.chomp.split(' ').map(&:to_i)

1000000000.times do |k|
  if (a - k).abs == (b - k).abs
    puts k
    break
  end

  if k > a && k > b
    puts 'IMPOSSIBLE'
    break
  end
end
