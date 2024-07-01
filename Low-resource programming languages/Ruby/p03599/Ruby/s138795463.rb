A, B, C, D, E, F = gets.split.map(&:to_i)

c = 0
ans1 = ans2 = 0
arr = (0..(1500/C)).map do |c_|
  next if c_*C > 1500
  (0..(1500/D)).map do |d|
    s = c_*C+D*d
    if s > 1500
      next
    else
      s
    end
  end
end.flatten.compact.sort.uniq.reverse

(0..30).each do |a|
  break if a * A * 100 > F
  (0..30).each do |b|
    next if a == 0 && b == 0
    water = a * A * 100 + b * B * 100
    break if water >= F
    s = (a * A + b * B) * E
    t = F - water
    suger = arr.find { |i| i <= t && i <= s }
    next if suger.nil?
    nc = suger.to_f / (water + suger)
    if nc > c
      ans1 = water + suger
      ans2 = suger
      c = nc
    end
  end
end

puts "#{ans1} #{ans2}"
