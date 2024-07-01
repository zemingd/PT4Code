A, B, C, D, E, F = gets.split.map(&:to_i)

c = 0
ans1 = ans2 = 0
arr = (0..100).map { |c| (0..100).map { |d| C*c+D*d }}.flatten.sort.reverse

(0..30).each do |a|
  break if a * A * 100 > F
  (0..30).each do |b|
    next if a == 0 && b == 0
    water = a * A * 100 + b * B * 100
    break if water >= F
    s = (a * A + b * B) * E
    t = F - water
    suger = arr.find { |i| i <= t && i <= s && i + water <= F }
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
