A, B, C, D, E, F = gets.split.map(&:to_i)

c = 0
ans1 = ans2 = 0
arr = (0..50).map { |c| (0..50).map { |d| C*c+D*d }}.flatten.sort.reverse

(0..100).each do |a|
  break if a * 100 > F
  (0..100).each do |b|
    next if a == 0 && b == 0
    break if (a * 100 + b * 100) >= F
    water = a * 100 + b * 100
    t = F - water
    suger = arr.find { |i| i <= t && i <= (a+b)*E }
    next if suger.nil? || water + suger > F
    nc = suger.to_f / (water + suger)
    if nc > c
      ans1 = water + suger
      ans2 = suger
      c = nc
    end
  end
end

puts "#{ans1} #{ans2}"
