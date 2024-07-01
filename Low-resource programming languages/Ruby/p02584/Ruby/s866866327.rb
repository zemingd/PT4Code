x,k,d = gets.chomp.split(" ").map(&:to_i)

if x == 0
  if k % 2 == 0
    puts 0
    return
  else
    puts d
    return
  end
end

if x < 0
  x = x.abs
end

k.times do |i|
  if x > d
    x -= d
    next
  else
    if (k-i) % 2 == 0
      puts x
      return
    else
      puts (x-d).abs
      return
    end
  end
end
