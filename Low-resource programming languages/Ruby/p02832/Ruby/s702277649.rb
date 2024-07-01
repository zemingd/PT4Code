def main
  n = gets.chomp.to_i
  as = gets.chomp.split(' ').map(&:to_i)

  if as.size == 1
    if as[0] == 1
      puts 0
      return
    else
      puts '-1'
      return
    end
  end

  unless as.any?(1)
    puts '-1'
    return
  end

  current = 1
  count = 0
  (0...n).each do |i|
    if as[i] != current
      count += 1
    else
      current += 1
    end
  end

  puts count
end

main
