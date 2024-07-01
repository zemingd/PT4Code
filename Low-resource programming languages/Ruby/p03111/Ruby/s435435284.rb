def combo

end


n,a,b,c = gets.chomp.split(" ").map(&:to_i)
bloom = []
n.times do
  bloom << gets.to_i
end

bloom.sort!

targets = [a,b,c]
targets.each do |target|
  if bloom.include?(target)
    bloom.delete_at(bloom.find_index(target))
    targets.delete(target)
    next
  end
end

mp = 0

targets.size.times do
  target_max_diff = targets.max - bloom.max
  target_min_diff = targets.min - bloom.min

  target = (target_max_diff < target_min_diff) ? targets.max : targets.min
  targets.delete(target)

#  puts ""
#  puts "target : #{target}"
#  puts "mp : #{mp}"
#  puts "bloom : #{bloom}"
  near = bloom.min_by{|take| (target - take).abs}

  if (target - near).abs <= 10
    mp += (target - near).abs
    bloom.delete_at(bloom.find_index(near))
    next
  end

  if (target - near) < 0
    mp += (target - near).abs
    bloom.delete_at(bloom.find_index(near))
    next
  end

  mp_tmp = 0
  bloom.size.times do |i|
    comb = bloom.combination(2).to_a
#    p comb
    near = comb.min_by{|c| (target - c.inject(:+)).abs}
#    puts "near : #{near}"
    diff = target - near.inject(:+)
    if diff <= 10 || bloom.min - diff > 10
#      puts "take : #{near} diff : #{diff}"
      mp += diff.abs + ((near.size-1)*10) + (i*10)
      near.each do |t|
        bloom.delete_at(bloom.index(t))
      end
      break
    end

    near = comb.min_by{|take| (target - take.inject(:+)).abs}
    near.each do |take|
      bloom.delete_at(bloom.index(take))
    end
    bloom << near.inject(:+)

    mp_tmp += 10
  end

end

puts mp