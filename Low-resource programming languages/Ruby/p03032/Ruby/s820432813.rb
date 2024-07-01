gem_count, times = gets.split.map(&:to_i)
gems = gets.split.map(&:to_i)

res = 0

(0..([times, gem_count].min)).each do |left|
  (0..([times - left, gem_count - left].min)).each do |right|
    a = []
    gems[0...left].each {|n| a.push(n) }
    gems[(gem_count - right)...gem_count].each {|n| a.push(n) }
    
    a = a.sort
    
    sum = a.inject(&:+) || 0
    
    [times-left-right, a.length].min.times do |i|
      break if a[i] >= 0
      sum -= a[i]
    end
    
    res = sum if sum > res
  end
end

puts res