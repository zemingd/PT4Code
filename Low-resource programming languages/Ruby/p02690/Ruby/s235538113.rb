x = gets.to_i
(-50..50).each do |a|
  (-50..a).each do |b|
    if a**5-b**5 == x
      puts [a, b].join(' ')
      exit 0
    end
  end
end